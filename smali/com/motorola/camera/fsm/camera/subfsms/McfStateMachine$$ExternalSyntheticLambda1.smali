.class public final synthetic Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method
