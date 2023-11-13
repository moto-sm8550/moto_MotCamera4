.class public final Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;
.super Ljava/lang/Object;
.source "MeasureKpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/MeasureKpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KPIMeasurementClass"
.end annotation


# instance fields
.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mColdStart:Z

.field public mFlashSetting:Ljava/lang/String;

.field public mHdrSetting:Ljava/lang/String;

.field public final mKPI:Lcom/motorola/camera/CameraKpi$KPI;

.field public mModeSetting:I

.field public final mName:Ljava/lang/String;

.field public mPanoramaSetting:Z

.field public final mTime:J

.field public mTtfSetting:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mModeSetting:I

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mKPI:Lcom/motorola/camera/CameraKpi$KPI;

    .line 4
    iput-wide p2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTime:J

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mModeSetting:I

    return-void
.end method
