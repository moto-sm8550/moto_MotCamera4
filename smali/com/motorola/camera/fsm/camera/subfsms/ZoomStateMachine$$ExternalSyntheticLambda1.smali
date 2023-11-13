.class public final synthetic Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
