.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedTransition$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CutoutModeComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/drawable/TransitionDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedTransition$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedTransition$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 3
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800cf

    .line 4
    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedTransition$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f0800d0

    .line 8
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v1, v2

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
