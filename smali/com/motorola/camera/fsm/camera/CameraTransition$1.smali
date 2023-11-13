.class public final Lcom/motorola/camera/fsm/camera/CameraTransition$1;
.super Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
.source "CameraTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
        "Lcom/motorola/camera/fsm/camera/CameraTransition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    return-object v0
.end method
