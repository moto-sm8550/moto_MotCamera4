.class public final Lcom/motorola/camera/utility/QuickBlur;
.super Ljava/lang/Object;
.source "QuickBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/QuickBlur$Builder;
    }
.end annotation


# static fields
.field public static volatile singleton:Lcom/motorola/camera/utility/QuickBlur;


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;

.field public mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 2
    iput v0, p0, Lcom/motorola/camera/utility/QuickBlur;->mRadius:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/QuickBlur;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/motorola/camera/utility/QuickBlur;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/motorola/camera/utility/QuickBlur;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/utility/QuickBlur;

    invoke-direct {v1, p0}, Lcom/motorola/camera/utility/QuickBlur;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/utility/QuickBlur;->singleton:Lcom/motorola/camera/utility/QuickBlur;

    return-object p0
.end method
