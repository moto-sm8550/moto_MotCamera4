.class public final Lcom/google/android/exoplayer2/BundleListRetriever;
.super Landroid/os/Binder;
.source "BundleListRetriever.java"


# static fields
.field public static final SUGGESTED_MAX_IPC_SIZE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    :goto_0
    sput v0, Lcom/google/android/exoplayer2/BundleListRetriever;->SUGGESTED_MAX_IPC_SIZE:I

    return-void
.end method
