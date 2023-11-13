.class public Lcom/morphoinc/core/MorphoSensorFusion$SensorData;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morphoinc/core/MorphoSensorFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorData"
.end annotation


# instance fields
.field public final mTimeStamp:J

.field public final mValues:[D


# direct methods
.method public constructor <init>(J[D)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    .line 8
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    return-void
.end method

.method public constructor <init>(J[F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    .line 3
    array-length p1, p3

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 p1, 0x0

    .line 4
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    aget v0, p3, p1

    float-to-double v0, v0

    aput-wide v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
