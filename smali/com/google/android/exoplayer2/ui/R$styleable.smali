.class public final Lcom/google/android/exoplayer2/ui/R$styleable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final DefaultTimeBar:[I

.field public static final PlayerControlView:[I

.field public static final PlayerView:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0403d8

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040029
        0x7f04002a
        0x7f040062
        0x7f040063
        0x7f04008a
        0x7f0403a6
        0x7f0403a7
        0x7f0403e4
        0x7f0403e5
        0x7f0403e6
        0x7f0403e7
        0x7f0403e8
        0x7f040506
        0x7f04051a
    .end array-data

    :array_1
    .array-data 4
        0x7f040029
        0x7f04002a
        0x7f040062
        0x7f040063
        0x7f04008a
        0x7f040139
        0x7f0403a6
        0x7f0403a7
        0x7f0403d7
        0x7f0403e4
        0x7f0403e5
        0x7f0403e6
        0x7f0403e7
        0x7f0403e8
        0x7f04040e
        0x7f04040f
        0x7f040410
        0x7f040411
        0x7f040412
        0x7f040414
        0x7f0404e9
        0x7f040506
        0x7f04051a
    .end array-data

    :array_2
    .array-data 4
        0x7f040029
        0x7f04002a
        0x7f04004f
        0x7f040063
        0x7f04008a
        0x7f040139
        0x7f040166
        0x7f040215
        0x7f040216
        0x7f040264
        0x7f0403a6
        0x7f0403a7
        0x7f0403a8
        0x7f0403d7
        0x7f0403d8
        0x7f0403e4
        0x7f0403e5
        0x7f0403e6
        0x7f0403e7
        0x7f0403e8
        0x7f04040d
        0x7f040412
        0x7f040414
        0x7f040417
        0x7f04046a
        0x7f0404e9
        0x7f040506
        0x7f04051a
        0x7f040521
        0x7f040522
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0
.end method
