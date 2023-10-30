using System;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

public static class FileIo
{
    /// <summary>
    ///  A pasta deve ser colocacada com o / no final ex: temp/
    ///  O arquivo e o novoNomeArquivo deve ser colocado com sua extensão ex: meuarquivo.jpg
    /// </summary>
    /// <param name="caminho"></param>
    /// <param name="novoNomeArquivo"></param>
    /// <exception cref="Houve um erro ao realizar o dowload do arquivo!"></exception>
    public static void DonwloadArquivo(string caminho, string novoNomeArquivo)
    {
        try
        {
            String caminhoDoArquivo = HttpContext.Current.Server.MapPath($"~/{caminho}");
            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.ContentType = "application/octet-stream";
            HttpContext.Current.Response.AppendHeader("content-disposition", "filename=" + novoNomeArquivo);
            HttpContext.Current.Response.TransmitFile(caminhoDoArquivo);
            HttpContext.Current.Response.End();
        }
        catch (Exception e)
        {
            throw new Exception("Houve um erro ao realizar o dowload do arquivo!");
        }
        finally
        {
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }

    public static void UploadArquivo(FileUpload fileUpload, string nomeArquivo)
    {
        if (fileUpload.PostedFile != null)
        {
            string nomeOriginalArquivo = Path.GetFileName(fileUpload.PostedFile.FileName);
            string tipoArquivo = fileUpload.PostedFile.ContentType;

            if (tipoArquivo != "image/jpeg")
            {
                throw new Exception("Arquivo não permitido! Somente JPEG.");
            }

            int tamanhoArquivo = fileUpload.PostedFile.ContentLength;

            if (tamanhoArquivo <= 0)
            {
                throw new Exception("A tentativa de upload do arquivo " + nomeOriginalArquivo + " falhou!");
            }
            else
            {
                try
                {
                    fileUpload.PostedFile.SaveAs(Path.Combine(GetCaminhoUpload(), nomeArquivo + ".jpg"));
                }
                catch (Exception ex)
                {
                    throw new Exception("Ocorreu um erro durante o upload do arquivo: " + ex.Message);
                }
            }
        }
        else
        {
            throw new Exception("Nenhum arquivo foi selecionado para fazer o upload.");
        }
    }

    private static string GetCaminhoUpload()
    {
        string caminhoUpload = AppDomain.CurrentDomain.BaseDirectory + "uploads";

        if (!Directory.Exists(caminhoUpload))
        {
            Directory.CreateDirectory(caminhoUpload);
        }

        return caminhoUpload;
    }
}
