.class public final Lcom/motorola/camera/storage/exception/DisconnectedException;
.super Ljava/io/IOException;
.source "DisconnectedException.kt"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Provider disconnected"

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
