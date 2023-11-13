.class public final Landroidx/cardview/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final CardView:[I

.field public static final LottieAnimationView:[I


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 9

    const/16 v0, 0xa

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v7, "subtype"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string/jumbo v7, "supertypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string/jumbo v7, "subtypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string/jumbo v7, "typeArgumentVariance"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    const-string/jumbo v7, "typeParameterVariance"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_5
    const-string/jumbo v7, "typeArgument"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string/jumbo v7, "typeParameter"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string/jumbo v7, "type2"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string/jumbo v7, "type1"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_9
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_a
    const-string v7, "argument"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_b
    const-string v7, "parameter"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_c
    const-string/jumbo v7, "typeCheckingProcedureCallbacks"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_d
    const-string/jumbo v7, "supertype"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "getInType"

    const-string v7, "getOutType"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v6, v4, v8

    goto :goto_3

    :cond_3
    aput-object v7, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "findCorrespondingSupertype"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_e
    const-string v5, "capture"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_f
    const-string v5, "checkSubtypeForTheSameConstructor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_10
    const-string v5, "isSubtypeOf"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_11
    const-string v5, "getEffectiveProjectionKind"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_12
    const-string v5, "equalTypes"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_13
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_14
    aput-object v7, v4, v3

    :goto_4
    :pswitch_15
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/cardview/R$styleable;->CardView:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/cardview/R$styleable;->LottieAnimationView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013f
        0x1010140
        0x7f040099
        0x7f04009a
        0x7f04009b
        0x7f04009d
        0x7f04009e
        0x7f04009f
        0x7f04012e
        0x7f04012f
        0x7f040131
        0x7f040132
        0x7f040134
    .end array-data

    :array_1
    .array-data 4
        0x7f0402dc
        0x7f0402dd
        0x7f0402de
        0x7f0402df
        0x7f0402e0
        0x7f0402e1
        0x7f0402e2
        0x7f0402e3
        0x7f0402e4
        0x7f0402e5
        0x7f0402e6
        0x7f0402e7
        0x7f0402e8
        0x7f0402e9
        0x7f0402ea
        0x7f0402eb
    .end array-data
.end method
