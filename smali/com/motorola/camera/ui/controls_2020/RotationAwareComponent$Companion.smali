.class public final Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$Companion;
.super Ljava/lang/Object;
.source "RotationAwareComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRotation(FI)F
    .locals 1

    rsub-int p0, p2, 0x168

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/4 p2, 0x0

    cmpg-float p2, p0, p2

    const/high16 v0, 0x43b40000    # 360.0f

    if-gez p2, :cond_0

    add-float/2addr p0, v0

    :cond_0
    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p0, p2

    if-lez p2, :cond_1

    sub-float/2addr p0, v0

    :cond_1
    add-float/2addr p1, p0

    return p1
.end method
