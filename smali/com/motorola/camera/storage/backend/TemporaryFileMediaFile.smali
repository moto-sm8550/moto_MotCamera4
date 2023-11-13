.class public final Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
.super Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;
.source "TemporaryFileMediaFile.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemporaryFileMediaFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemporaryFileMediaFile.kt\ncom/motorola/camera/storage/backend/TemporaryFileMediaFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation


# instance fields
.field public final tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/saving/FileName;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    throw v0
.end method

.method public final getFileUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final moveToFinalLocation()Lcom/motorola/camera/storage/MediaFile;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    const-string/jumbo v1, "uri"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;

    invoke-direct {v1, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;-><init>(Landroid/net/Uri;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    .line 5
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    throw v0
.end method

.method public final openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const-string v0, "Failed to open: "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 3
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 5
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 6
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported on temporary file!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TemporaryFileMediaFile(tempFile="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-super {p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x29

    .line 5
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
