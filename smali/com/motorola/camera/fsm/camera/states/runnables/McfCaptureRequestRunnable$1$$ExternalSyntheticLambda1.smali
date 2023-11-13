.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/mcf/Mcf$InstanceType;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/mcf/Mcf$InstanceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    check-cast p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    invoke-direct {p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;-><init>(Lcom/motorola/camera/mcf/Mcf$InstanceType;)V

    return-object p1
.end method
