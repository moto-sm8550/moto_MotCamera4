.class public final synthetic Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v3, "this$0"

    .line 1
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    invoke-static {v1, v0, v3}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->bannerTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {v1, v0, v3}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    return-void

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v1, "this$0"

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$setting"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string/jumbo v1, "setting.value"

    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void

    .line 14
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/service/JmsServiceInterface$1;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    .line 15
    iget-object v3, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 16
    invoke-virtual {v3}, Lcom/motorola/camera/service/JmsServiceInterface;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 17
    iget-object v4, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 18
    iget-object v4, v4, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v5, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 21
    iget-boolean v6, v5, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    if-nez v6, :cond_3

    .line 22
    iget-boolean v6, v5, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    if-eqz v6, :cond_3

    .line 23
    invoke-static {p0}, Ljms/IJobMgrService$Stub;->asInterface(Landroid/os/IBinder;)Ljms/IJobMgrService;

    move-result-object p0

    iput-object p0, v5, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    .line 24
    new-instance p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    .line 25
    :try_start_1
    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 26
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    .line 27
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-static {v7, v3}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .line 29
    iget-object v8, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v8, v8, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    invoke-interface {v8, v3, v7}, Ljms/IJobMgrService;->initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    iget-object v3, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v7, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    sget-object v8, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 31
    iget-object v8, v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    .line 32
    iget v3, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    const-string v9, "CameraAppClient"

    .line 33
    invoke-interface {v7, p0, v8, v3, v9}, Ljms/IJobMgrService;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 34
    :try_start_3
    sget-object v3, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v7, "JmsServiceInterface registerClient() exception: "

    .line 35
    invoke-static {v3, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_1
    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    .line 37
    iput-boolean v2, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    .line 38
    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    cmp-long p0, v1, v5

    if-lez p0, :cond_4

    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 40
    sget-object v1, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v2, "JmsServiceInterface initialize() exception: "

    .line 41
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    cmp-long p0, v1, v5

    if-lez p0, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 43
    :cond_2
    monitor-exit v4

    goto :goto_3

    .line 44
    :cond_3
    iget-boolean p0, v5, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    if-nez p0, :cond_4

    .line 45
    iget-object p0, v5, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 46
    :cond_4
    :goto_2
    monitor-exit v4

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 47
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    .line 48
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v3, p0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V

    .line 49
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 50
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
