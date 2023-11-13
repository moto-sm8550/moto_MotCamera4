.class public final Lcom/motorola/camera/saving/SaveImageService$LazyLoader;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/saving/SaveImageService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    return-void
.end method
