.class public final Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;
.super Ljava/lang/Object;
.source "McfStandAloneSubjectMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public final motion:F

.field public final timestamp:J


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    .line 3
    iput p3, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->motion:F

    return-void
.end method
