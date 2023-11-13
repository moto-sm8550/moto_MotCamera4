.class public final synthetic Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_CONTENT$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic getMCheckInData(I)I
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v1, 0xa

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    return v1

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x4

    if-ne p0, v5, :cond_3

    return v4

    :cond_3
    const/4 v6, 0x5

    if-ne p0, v6, :cond_4

    return v2

    :cond_4
    const/4 v2, 0x7

    if-ne p0, v4, :cond_5

    return v2

    :cond_5
    if-ne p0, v2, :cond_6

    return v3

    :cond_6
    if-ne p0, v0, :cond_7

    return v6

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-ne p0, v1, :cond_9

    return v5

    :cond_9
    const/16 v1, 0xb

    if-ne p0, v1, :cond_a

    return v1

    :cond_a
    const/16 v1, 0xc

    if-ne p0, v1, :cond_b

    return v0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INFLEXIBLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "FLEXIBLE_UPPER_BOUND"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "FLEXIBLE_LOWER_BOUND"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method
