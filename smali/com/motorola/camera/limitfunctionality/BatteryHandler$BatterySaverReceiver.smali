.class public final Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/limitfunctionality/BatteryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatterySaverReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/limitfunctionality/BatteryHandler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/limitfunctionality/BatteryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;->this$0:Lcom/motorola/camera/limitfunctionality/BatteryHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler$BatterySaverReceiver;->this$0:Lcom/motorola/camera/limitfunctionality/BatteryHandler;

    .line 2
    invoke-virtual {p0, p2}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method
