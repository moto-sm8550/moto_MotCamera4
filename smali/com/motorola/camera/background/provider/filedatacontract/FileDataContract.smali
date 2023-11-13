.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;
.super Ljava/lang/Object;
.source "FileDataContract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    const-string v0, "content://com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider/fileData_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(CONTENT_STRING)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
