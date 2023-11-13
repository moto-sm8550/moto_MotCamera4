.class public final Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatterySaverReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;->this$0:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$BatterySaverReceiver;->this$0:Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;

    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->processEvent()V

    return-void
.end method
