.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    const-class v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method
