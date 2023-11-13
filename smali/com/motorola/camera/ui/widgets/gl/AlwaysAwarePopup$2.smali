.class public final Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;
.source "AlwaysAwarePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->loadTextures()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public final onAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v0, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mActionsTexture:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$2;

    check-cast p1, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->showMultiActions(Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->showCards(Z)V

    goto/16 :goto_5

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mNoActionTaken:Z

    .line 7
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ALWAYS_AWARE_CONNECT_WIFI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 9
    iget-object v5, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 10
    invoke-direct {v2, v4, v5, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 11
    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne v0, v2, :cond_5

    .line 13
    invoke-static {}, Lkotlin/TuplesKt;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 15
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v4, 0x7f110110

    .line 17
    invoke-static {v4, v0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction$$ExternalSyntheticOutline0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-object v4, p1

    check-cast v4, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    .line 19
    iget-object v4, v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 20
    check-cast v4, Landroid/content/Intent;

    sget-object v5, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->OBJECT_DETECTION:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    const/4 v6, 0x0

    .line 21
    invoke-direct {v2, v4, v5, v1, v6}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;ILandroid/os/Bundle;)V

    .line 22
    invoke-interface {v0, v2}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto :goto_2

    .line 23
    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 24
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 25
    iget-object v2, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 26
    check-cast v2, Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 27
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 28
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v4, 0x7f11003c

    .line 29
    invoke-static {v4, v0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction$$ExternalSyntheticOutline0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 30
    :cond_7
    :goto_2
    iget-object p1, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 31
    iget p1, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    .line 32
    sget-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 33
    invoke-static {}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->values()[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-result-object v2

    array-length v4, v2

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v6, v2, v5

    .line 34
    iget v7, v6, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    if-ne v7, p1, :cond_8

    move-object v0, v6

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 35
    :cond_9
    :goto_4
    invoke-virtual {p0, v3, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->dismissCards(ZZLcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void
.end method
