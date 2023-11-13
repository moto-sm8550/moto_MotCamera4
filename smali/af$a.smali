.class public final enum Laf$a;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lcd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Laf$a;

.field public static final enum b:Laf$a;

.field public static final enum c:Laf$a;

.field public static final enum d:Laf$a;

.field public static final enum e:Laf$a;

.field public static final enum f:Laf$a;

.field public static final enum g:Laf$a;

.field private static final enum i:Laf$a;

.field private static final enum j:Laf$a;

.field private static final enum k:Laf$a;

.field private static final enum l:Laf$a;

.field private static final enum m:Laf$a;

.field private static final enum n:Laf$a;

.field private static final enum o:Laf$a;

.field private static final synthetic p:[Laf$a;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Laf$a;

    const-string v1, "LENS_AVAILABILITY_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laf$a;->a:Laf$a;

    .line 2
    new-instance v1, Laf$a;

    const-string v3, "LENS_READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Laf$a;->b:Laf$a;

    .line 3
    new-instance v3, Laf$a;

    const-string v5, "LENS_UNAVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Laf$a;->i:Laf$a;

    .line 4
    new-instance v5, Laf$a;

    const-string v7, "LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Laf$a;->j:Laf$a;

    .line 5
    new-instance v7, Laf$a;

    const-string v9, "LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Laf$a;->k:Laf$a;

    .line 6
    new-instance v9, Laf$a;

    const-string v11, "LENS_UNAVAILABLE_INVALID_CURSOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Laf$a;->c:Laf$a;

    .line 7
    new-instance v11, Laf$a;

    const-string v13, "LENS_UNAVAILABLE_DEVICE_LOCKED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Laf$a;->l:Laf$a;

    .line 8
    new-instance v13, Laf$a;

    const-string v15, "LENS_UNAVAILABLE_AGSA_OUTDATED"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Laf$a;->m:Laf$a;

    .line 9
    new-instance v15, Laf$a;

    const-string v14, "LENS_UNAVAILABLE_DEVICE_OPA_NOT_ELIGIBLE"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Laf$a;->n:Laf$a;

    .line 10
    new-instance v14, Laf$a;

    const-string v12, "LENS_UNAVAILABLE_ASSISTANT_EYES_FLAG_DISABLED"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Laf$a;->o:Laf$a;

    .line 11
    new-instance v12, Laf$a;

    const-string v10, "LENS_UNAVAILABLE_SERVICE_UNAVAILABLE"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Laf$a;->d:Laf$a;

    .line 12
    new-instance v10, Laf$a;

    const-string v8, "LENS_UNAVAILABLE_SERVICE_BUSY_FAILURE"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Laf$a;->e:Laf$a;

    .line 13
    new-instance v8, Laf$a;

    const-string v6, "LENS_UNAVAILABLE_FEATURE_UNAVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Laf$a;->f:Laf$a;

    .line 14
    new-instance v6, Laf$a;

    const-string v4, "LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Laf$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Laf$a;->g:Laf$a;

    const/16 v4, 0xe

    new-array v4, v4, [Laf$a;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    aput-object v17, v4, v2

    aput-object v6, v4, v8

    .line 15
    sput-object v4, Laf$a;->p:[Laf$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Laf$a;->h:I

    return-void
.end method

.method public static a(I)Laf$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Laf$a;->g:Laf$a;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Laf$a;->f:Laf$a;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Laf$a;->e:Laf$a;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Laf$a;->d:Laf$a;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Laf$a;->o:Laf$a;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Laf$a;->n:Laf$a;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Laf$a;->m:Laf$a;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Laf$a;->l:Laf$a;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Laf$a;->c:Laf$a;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Laf$a;->k:Laf$a;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Laf$a;->j:Laf$a;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Laf$a;->i:Laf$a;

    return-object p0

    .line 14
    :pswitch_c
    sget-object p0, Laf$a;->b:Laf$a;

    return-object p0

    .line 15
    :pswitch_d
    sget-object p0, Laf$a;->a:Laf$a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static b()Lcf;
    .locals 1

    sget-object v0, Lag;->a:Lcf;

    return-object v0
.end method

.method public static values()[Laf$a;
    .locals 1

    sget-object v0, Laf$a;->p:[Laf$a;

    invoke-virtual {v0}, [Laf$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laf$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Laf$a;->h:I

    return p0
.end method
