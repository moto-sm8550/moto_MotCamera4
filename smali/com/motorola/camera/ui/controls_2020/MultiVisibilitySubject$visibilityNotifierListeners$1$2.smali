.class public final Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiVisibilitySubject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $index:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;->$index:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;->$index:I

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
