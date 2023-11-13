.class public final synthetic Landroidx/window/core/Version$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic getMX(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x3db80000    # -50.0f

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x42480000    # 50.0f

    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static m(C)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method
