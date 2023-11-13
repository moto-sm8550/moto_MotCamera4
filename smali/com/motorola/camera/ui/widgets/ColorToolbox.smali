.class public final Lcom/motorola/camera/ui/widgets/ColorToolbox;
.super Ljava/lang/Object;
.source "ColorToolbox.kt"


# instance fields
.field public final buttonActiveColor:I

.field public final navBarBackground:I

.field public final onPrimary:I

.field public final primaryLight:I

.field public final primaryMain:I

.field public final primaryShadow:I

.field public final sliderShadow:I

.field public final surfaceDark:I

.field public final surfaceLight:I

.field public final surfaceMain:I

.field public final surfaceMedium:I

.field public final tooltipBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060321

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const v0, 0x7f06031d

    .line 5
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    const v0, 0x7f060320

    .line 6
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryLight:I

    const v0, 0x7f060327

    .line 8
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    const v0, 0x7f0602f5

    .line 10
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 11
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    const v0, 0x7f0603a1

    .line 12
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 13
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    const v0, 0x7f060045

    .line 14
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 15
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonActiveColor:I

    const v0, 0x7f06038a

    .line 16
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 17
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    const v0, 0x7f060385

    .line 18
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 19
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    const v0, 0x7f060389

    .line 20
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 21
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    const v0, 0x7f060302

    .line 22
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 23
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    const v0, 0x7f060380

    .line 24
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 25
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    const v0, 0x7f040101

    const/high16 v1, -0x1000000

    .line 26
    invoke-static {p1, v0, v1}, Landroidx/preference/R$string;->getColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    return-void
.end method
