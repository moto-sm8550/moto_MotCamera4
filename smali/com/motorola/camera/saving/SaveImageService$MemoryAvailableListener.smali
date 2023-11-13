.class public final Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryAvailableListener"
.end annotation


# instance fields
.field public final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/saving/MemoryListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNumPics:I

.field public final mPicSize:I
