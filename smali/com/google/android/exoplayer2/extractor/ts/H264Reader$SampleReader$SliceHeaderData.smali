.class public final Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# instance fields
.field public bottomFieldFlag:Z

.field public bottomFieldFlagPresent:Z

.field public deltaPicOrderCnt0:I

.field public deltaPicOrderCnt1:I

.field public deltaPicOrderCntBottom:I

.field public fieldPicFlag:Z

.field public frameNum:I

.field public hasSliceType:Z

.field public idrPicFlag:Z

.field public idrPicId:I

.field public isComplete:Z

.field public nalRefIdc:I

.field public picOrderCntLsb:I

.field public picParameterSetId:I

.field public sliceType:I

.field public spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
