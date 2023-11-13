.class public Lcom/anc/humansdk/fusion/ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# static fields
.field public static final ANC_HUM_FAILURE:I = 0x3

.field public static final ANC_HUM_GL_COMPILING:I = 0x7

.field public static final ANC_HUM_INVALID_ARGUMENT:I = 0x1

.field public static final ANC_HUM_INVALID_HANDLE:I = 0x2

.field public static final ANC_HUM_MORE_PERSON:I = 0x6

.field public static final ANC_HUM_NO_PERSON:I = 0x4

.field public static final ANC_HUM_OK:I = 0x0

.field public static final ANC_HUM_TOO_FAR:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN ERROR"

    return-object p0

    :pswitch_0
    const-string p0, "UNDER INITIALIZING"

    return-object p0

    :pswitch_1
    const-string p0, "TOO MANY PERSON"

    return-object p0

    :pswitch_2
    const-string p0, "TOO FAR"

    return-object p0

    :pswitch_3
    const-string p0, "NO PERSON"

    return-object p0

    :pswitch_4
    const-string p0, "FAILURE"

    return-object p0

    :pswitch_5
    const-string p0, "INVALID HANDLE"

    return-object p0

    :pswitch_6
    const-string p0, "INVALID ARGUMENT"

    return-object p0

    :pswitch_7
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isError(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
