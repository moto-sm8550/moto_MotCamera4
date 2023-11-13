.class public final Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;
.super Ljava/lang/Object;
.source "BatterySaverHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerManagerWrapper"
.end annotation


# instance fields
.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method
