.class public final Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;
.super Ljava/lang/Object;
.source "McfParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "McfLogicalCamera"
.end annotation


# instance fields
.field public final mAuxPhyCameraId:Ljava/lang/String;

.field public final mLogicalCameraId:Ljava/lang/String;

.field public final mPrimaryPhyCameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;->mLogicalCameraId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;->mPrimaryPhyCameraId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;->mAuxPhyCameraId:Ljava/lang/String;

    return-void
.end method
