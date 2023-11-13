.class public final Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;
.super Ljava/lang/Object;
.source "BannerPromptComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BannerData"
.end annotation


# instance fields
.field public display:Z

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public messageText:Ljava/lang/String;

.field public negativeButtonText:Ljava/lang/String;

.field public negativeCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

.field public positiveButtonText:Ljava/lang/String;

.field public positiveCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

.field public rotatable:Z

.field public sustainWhileChangingMode:Z

.field public titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->rotatable:Z

    return-void
.end method
