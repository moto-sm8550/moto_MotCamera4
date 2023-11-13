.class public final synthetic Lcom/motorola/camera/JsonConfig$Mode$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static _getMode(ZZZZZ)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "NORMAL"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "DUAL"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "DEPTH_DUAL"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "ZSL_DEPTH_DUAL"

    return-object p0

    :cond_3
    const-string p0, "null"

    return-object p0
.end method
