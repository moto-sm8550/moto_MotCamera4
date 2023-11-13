.class public final Lcom/motorola/camera/background/provider/BgJobContext;
.super Ljava/lang/Object;
.source "BgJobContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;,
        Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;,
        Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;,
        Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;,
        Lcom/motorola/camera/background/provider/BgJobContext$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/provider/BgJobContext$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/provider/BgJobContext$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/provider/BgJobContext$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/provider/BgJobContext;->Companion:Lcom/motorola/camera/background/provider/BgJobContext$Companion;

    return-void
.end method
