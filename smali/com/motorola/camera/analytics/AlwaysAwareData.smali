.class public final Lcom/motorola/camera/analytics/AlwaysAwareData;
.super Ljava/lang/Object;
.source "AlwaysAwareData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;,
        Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
    }
.end annotation


# instance fields
.field public action:I

.field public detectionTime:J

.field public geoAvailable:Z

.field public mType:I

.field public networkSubtype:I

.field public networkType:I

.field public scanTime:J

.field public totFields:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    .line 5
    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    .line 6
    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    .line 7
    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    const/16 v0, 0x100

    .line 9
    iput v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    return-void
.end method
