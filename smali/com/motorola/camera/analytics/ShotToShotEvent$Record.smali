.class public final Lcom/motorola/camera/analytics/ShotToShotEvent$Record;
.super Ljava/lang/Object;
.source "ShotToShotEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/ShotToShotEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public mEndTime:J

.field public mKpiTime:J

.field public mMcfQueue:I

.field public mMode:I

.field public mModeName:Ljava/lang/String;

.field public mSessionSeqId:J

.field public mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    .line 4
    iput-wide v0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    return-void
.end method
