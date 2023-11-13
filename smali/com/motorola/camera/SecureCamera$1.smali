.class public final Lcom/motorola/camera/SecureCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/SecureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/SecureCamera;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/SecureCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Lcom/motorola/camera/SecureCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Lcom/motorola/camera/SecureCamera;

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void
.end method
