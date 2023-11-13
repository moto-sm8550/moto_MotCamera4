.class public Lcom/motorola/camera/fsm/camera/states/Main$CheckCriticalPermissionsRunnable;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckCriticalPermissionsRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mPermissionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$CheckCriticalPermissionsRunnable;->mPermissionType:I

    return-void
.end method


# virtual methods
.method public canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$CheckCriticalPermissionsRunnable;->mPermissionType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/PermissionsManager;->isMissingCriticalPermissions()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$CheckCriticalPermissionsRunnable;->mPermissionType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/PermissionsManager;->isMissingCriticalPermissions()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method

.method public bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Main$CheckCriticalPermissionsRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
