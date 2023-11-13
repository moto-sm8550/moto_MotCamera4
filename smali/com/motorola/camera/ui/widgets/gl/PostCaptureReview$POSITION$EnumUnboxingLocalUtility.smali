.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$POSITION$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic getXSign(I)F
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getYSign(I)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method
