.class public final Landroidx/preference/R$styleable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# static fields
.field public static final BackgroundStyle:[I

.field public static final CheckBoxPreference:[I

.field public static final DialogPreference:[I

.field public static final EMPTY_LOCKED:Lkotlinx/coroutines/sync/Empty;

.field public static final EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

.field public static final EditTextPreference:[I

.field public static final LOCKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final ListPreference:[I

.field public static final MultiSelectListPreference:[I

.field public static final Preference:[I

.field public static final PreferenceFragmentCompat:[I

.field public static final PreferenceGroup:[I

.field public static final PreferenceImageView:[I

.field public static final SeekBarPreference:[I

.field public static final SwitchPreference:[I

.field public static final SwitchPreferenceCompat:[I

.field public static final UNLOCKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final UNLOCK_FAIL:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/preference/R$styleable;->BackgroundStyle:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/preference/R$styleable;->CheckBoxPreference:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/preference/R$styleable;->DialogPreference:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040520

    aput v2, v0, v1

    sput-object v0, Landroidx/preference/R$styleable;->EditTextPreference:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/preference/R$styleable;->ListPreference:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroidx/preference/R$styleable;->MultiSelectListPreference:[I

    const/16 v1, 0x24

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    sput-object v1, Landroidx/preference/R$styleable;->Preference:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Landroidx/preference/R$styleable;->PreferenceFragmentCompat:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    sput-object v1, Landroidx/preference/R$styleable;->PreferenceGroup:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroidx/preference/R$styleable;->PreferenceImageView:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroidx/preference/R$styleable;->SeekBarPreference:[I

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Landroidx/preference/R$styleable;->SwitchPreference:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Landroidx/preference/R$styleable;->SwitchPreferenceCompat:[I

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/preference/R$styleable;->UNLOCK_FAIL:Lkotlinx/coroutines/internal/Symbol;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/preference/R$styleable;->LOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 4
    new-instance v1, Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "UNLOCKED"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroidx/preference/R$styleable;->UNLOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 5
    new-instance v2, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroidx/preference/R$styleable;->EMPTY_LOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 6
    new-instance v0, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/preference/R$styleable;->EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

    return-void

    nop

    :array_0
    .array-data 4
        0x101030e
        0x7f0403f2
    .end array-data

    :array_1
    .array-data 4
        0x10101ef
        0x10101f0
        0x10101f1
        0x7f040173
        0x7f040468
        0x7f040469
    .end array-data

    :array_2
    .array-data 4
        0x10101f2
        0x10101f3
        0x10101f4
        0x10101f5
        0x10101f6
        0x10101f7
        0x7f04016c
        0x7f04016d
        0x7f04016e
        0x7f040172
        0x7f040373
        0x7f0403ae
    .end array-data

    :array_3
    .array-data 4
        0x10100b2
        0x10101f8
        0x7f0401ab
        0x7f0401ac
        0x7f040520
    .end array-data

    :array_4
    .array-data 4
        0x10100b2
        0x10101f8
        0x7f0401ab
        0x7f0401ac
    .end array-data

    :array_5
    .array-data 4
        0x1010002
        0x101000d
        0x101000e
        0x10100f2
        0x10101e1
        0x10101e6
        0x10101e8
        0x10101e9
        0x10101ea
        0x10101eb
        0x10101ec
        0x10101ed
        0x10101ee
        0x10102e3
        0x101055c
        0x1010561
        0x7f040032
        0x7f040034
        0x7f040165
        0x7f040169
        0x7f04019f
        0x7f0401a1
        0x7f040202
        0x7f040220
        0x7f040225
        0x7f040245
        0x7f040265
        0x7f04026f
        0x7f040381
        0x7f04039f
        0x7f0403f1
        0x7f0403fe
        0x7f04041c
        0x7f040467
        0x7f0404ec
        0x7f040535
    .end array-data

    :array_6
    .array-data 4
        0x10100f2
        0x1010129
        0x101012a
        0x7f040033
    .end array-data

    :array_7
    .array-data 4
        0x10101e7
        0x7f040240
        0x7f040382
    .end array-data

    :array_8
    .array-data 4
        0x101011f
        0x1010120
        0x7f040319
        0x7f040320
    .end array-data

    :array_9
    .array-data 4
        0x10100f2
        0x1010136
        0x7f04002b
        0x7f040325
        0x7f0403ee
        0x7f04040a
        0x7f04051d
    .end array-data

    :array_a
    .array-data 4
        0x10101ef
        0x10101f0
        0x10101f1
        0x101036b
        0x101036c
        0x7f040173
        0x7f040468
        0x7f040469
        0x7f040471
        0x7f040472
    .end array-data

    :array_b
    .array-data 4
        0x10101ef
        0x10101f0
        0x10101f1
        0x101036b
        0x101036c
        0x7f040173
        0x7f040468
        0x7f040469
        0x7f040471
        0x7f040472
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 0

    const/4 p0, 0x4

    iput p0, p2, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    const/4 p0, -0x4

    return p0
.end method

.method public skipData(J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
