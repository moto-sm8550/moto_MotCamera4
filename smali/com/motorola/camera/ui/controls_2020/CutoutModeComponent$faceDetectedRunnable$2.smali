.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedRunnable$2;
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
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedRunnable$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedRunnable$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
