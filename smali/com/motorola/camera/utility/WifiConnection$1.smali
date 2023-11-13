.class public final Lcom/motorola/camera/utility/WifiConnection$1;
.super Ljava/lang/Object;
.source "WifiConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/WifiConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/utility/WifiConnection;

.field public final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/WifiConnection;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v0, "wifi"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/motorola/camera/utility/WifiConnection$1;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/utility/WifiConnection$1;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    .line 4
    iget v2, v0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    const/4 v1, 0x5

    if-ge v2, v1, :cond_6

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    .line 11
    iget v2, v0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    iget-object v2, v0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v0, v3

    goto :goto_1

    .line 12
    :cond_2
    new-instance v2, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v2}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    .line 13
    iget-object v4, v0, Lcom/motorola/camera/utility/WifiConnection;->mSsid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 14
    iget-boolean v4, v0, Lcom/motorola/camera/utility/WifiConnection;->mIsHidden:Z

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 15
    iget v4, v0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    const/4 v1, 0x2

    if-eq v4, v1, :cond_4

    const/4 v1, 0x3

    if-eq v4, v1, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 18
    :goto_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    .line 19
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 20
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    .line 21
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f110078

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 23
    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 24
    invoke-static {v1, p0, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    .line 25
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/utility/WifiConnection$1;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetworkSuggestions(Ljava/util/List;)I

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_ADD_NETWORKS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.WIFI_NETWORK_LIST"

    .line 30
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/utility/WifiConnection;->mEventListener:Lcom/motorola/camera/EventListener;

    .line 34
    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    sget-object v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->WIFI_ADD_NETWORKS:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;ILandroid/os/Bundle;)V

    .line 36
    invoke-interface {p0, v1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_6
    :goto_2
    return-void
.end method
