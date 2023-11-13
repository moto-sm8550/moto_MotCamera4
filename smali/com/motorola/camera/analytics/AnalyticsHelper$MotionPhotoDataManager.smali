.class public final Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/AnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionPhotoDataManager"
.end annotation


# instance fields
.field public final mResultDurationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;->mResultDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
