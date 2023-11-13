.class public final Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;
.super Ljava/lang/Object;
.source "CameraForegroundServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/CameraForegroundServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/service/CameraForegroundServiceManager;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;

    return-void
.end method
