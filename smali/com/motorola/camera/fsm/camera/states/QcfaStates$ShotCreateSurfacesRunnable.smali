.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateSurfacesRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "QcfaStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/QcfaStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShotCreateSurfacesRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    .line 4
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p3

    .line 7
    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->setupPreviewSize(Lcom/motorola/camera/StreamRequest;Z)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateSurfacesRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
