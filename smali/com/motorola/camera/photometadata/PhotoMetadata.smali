.class public final Lcom/motorola/camera/photometadata/PhotoMetadata;
.super Ljava/lang/Object;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;,
        Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;,
        Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;
    }
.end annotation


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field public static final EXIF_ASCII_PREFIX:[B

.field public static final EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

.field public static final HEIF_BRAND_HEIC:[B

.field public static final HEIF_BRAND_MIF1:[B

.field public static final HEIF_TYPE_FTYP:[B

.field public static final IDENTIFIER_EXIF_APP1:[B

.field public static final IDENTIFIER_MMIMETA_APP6:[B

.field public static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field public static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field public static final JPEG_SIGNATURE:[B

.field public static final ORF_MAKER_NOTE_HEADER_1:[B

.field public static final ORF_MAKER_NOTE_HEADER_2:[B

.field public static final STRING_PATTERN:Ljava/util/regex/Pattern;

.field public static final sExifPointerTagMap:Landroid/util/SparseIntArray;

.field public static final sExifTagMapsForReading:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sExifTagMapsForWriting:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field public static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field public static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApp6Data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public mAppData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field public mAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAttributesOffsets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field public mExifByteOrder:Ljava/nio/ByteOrder;

.field public mExifOffset:I

.field public mHasThumbnail:Z

.field public final mIsInputStream:Z

.field public mIsSupportedFile:Z

.field public mMimeType:I

.field public mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

.field public mOrfMakerNoteOffset:I

.field public mOrfThumbnailLength:I

.field public mOrfThumbnailOffset:I

.field public mRw2JpgFromRawOffset:I

.field public final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field public mThumbnailBytes:[B

.field public mThumbnailCompression:I

.field public mThumbnailLength:I

.field public mThumbnailOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_TYPE_FTYP:[B

    new-array v2, v1, [B

    .line 3
    fill-array-data v2, :array_2

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_MIF1:[B

    new-array v2, v1, [B

    .line 4
    fill-array-data v2, :array_3

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_HEIC:[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    .line 5
    fill-array-data v3, :array_4

    sput-object v3, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v4, v3, [B

    .line 6
    fill-array-data v4, :array_5

    sput-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_2:[B

    const-string v5, ""

    const-string v6, "BYTE"

    const-string v7, "STRING"

    const-string v8, "USHORT"

    const-string v9, "ULONG"

    const-string v10, "URATIONAL"

    const-string v11, "SBYTE"

    const-string v12, "UNDEFINED"

    const-string v13, "SSHORT"

    const-string v14, "SLONG"

    const-string v15, "SRATIONAL"

    const-string v16, "SINGLE"

    const-string v17, "DOUBLE"

    .line 7
    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v4, 0xe

    new-array v5, v4, [I

    .line 8
    fill-array-data v5, :array_6

    sput-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v5, 0x8

    new-array v6, v5, [B

    .line 9
    fill-array-data v6, :array_7

    sput-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_ASCII_PREFIX:[B

    new-array v6, v0, [I

    .line 10
    fill-array-data v6, :array_8

    sput-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_RGB:[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v5, v7, v8

    .line 11
    sput-object v7, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    const/16 v7, 0x29

    new-array v7, v7, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 12
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v11, 0xfe

    invoke-direct {v9, v10, v11, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v7, v8

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v9, v10, v11, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v7, v6

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v10, "ImageWidth"

    const/16 v11, 0x100

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x2

    aput-object v9, v7, v10

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "ImageLength"

    const/16 v12, 0x101

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v0

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v9, v11, v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v7, v1

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v11, "Compression"

    const/16 v12, 0x103

    invoke-direct {v9, v11, v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x5

    aput-object v9, v7, v11

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "PhotometricInterpretation"

    const/16 v13, 0x106

    invoke-direct {v9, v12, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v7, v2

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v12, "ImageDescription"

    const/16 v13, 0x10e

    invoke-direct {v9, v12, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v12, 0x7

    aput-object v9, v7, v12

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "Make"

    const/16 v14, 0x10f

    invoke-direct {v9, v13, v14, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v7, v5

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "Model"

    const/16 v14, 0x110

    invoke-direct {v9, v13, v14, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x9

    aput-object v9, v7, v13

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v9, v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v3

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "Orientation"

    const/16 v15, 0x112

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xb

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v9, v15, v14, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xc

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "RowsPerStrip"

    const/16 v14, 0x116

    invoke-direct {v9, v15, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0xd

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "StripByteCounts"

    const/16 v14, 0x117

    invoke-direct {v9, v15, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xf

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v9, v15, v14, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x10

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v9, v15, v14, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x11

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x12

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x13

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "Software"

    const/16 v15, 0x131

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x14

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v9, v15, v14, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x15

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v9, v15, v14, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x16

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v9, v15, v14, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x17

    aput-object v9, v7, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v4, 0x13f

    invoke-direct {v9, v15, v4, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x18

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v9, v15, v4, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x19

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "JPEGInterchangeFormat"

    const/16 v4, 0x201

    invoke-direct {v9, v15, v4, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x1a

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "JPEGInterchangeFormatLength"

    const/16 v4, 0x202

    invoke-direct {v9, v15, v4, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x1b

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "YCbCrCoefficients"

    const/16 v4, 0x211

    invoke-direct {v9, v15, v4, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x1c

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "YCbCrSubSampling"

    const/16 v4, 0x212

    invoke-direct {v9, v15, v4, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x1d

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "YCbCrPositioning"

    const/16 v4, 0x213

    invoke-direct {v9, v15, v4, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x1e

    aput-object v9, v7, v4

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ReferenceBlackWhite"

    const/16 v4, 0x214

    invoke-direct {v9, v15, v4, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x1f

    aput-object v9, v7, v4

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v9, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x20

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v9, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x21

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v9, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x22

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "SensorTopBorder"

    invoke-direct {v4, v9, v1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x23

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "SensorLeftBorder"

    invoke-direct {v4, v9, v11, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x24

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "SensorBottomBorder"

    invoke-direct {v4, v9, v2, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x25

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "SensorRightBorder"

    invoke-direct {v4, v9, v12, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x26

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "ISO"

    invoke-direct {v4, v9, v14, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x27

    aput-object v4, v7, v9

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v9, "JpgFromRaw"

    const/16 v14, 0x2e

    invoke-direct {v4, v9, v14, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x28

    aput-object v4, v7, v9

    const/16 v4, 0x3b

    new-array v4, v4, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 13
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v8

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FNumber"

    const v15, 0x829d

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v6

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v10

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v0

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v1

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "OECF"

    const v15, 0x8828

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v11

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v2

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v12

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v5

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v13

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v3

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ShutterSpeedValue"

    const v15, 0x9201

    invoke-direct {v9, v14, v15, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xb

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xc

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v9, v14, v15, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xd

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v9, v14, v15, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xe

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "MaxApertureValue"

    const v15, 0x9205

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xf

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubjectDistance"

    const v15, 0x9206

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x10

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "MeteringMode"

    const v15, 0x9207

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x11

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "LightSource"

    const v15, 0x9208

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x12

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "Flash"

    const v15, 0x9209

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x13

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FocalLength"

    const v15, 0x920a

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x14

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubjectArea"

    const v15, 0x9214

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x15

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "MakerNote"

    const v15, 0x927c

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x16

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "UserComment"

    const v15, 0x9286

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x17

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubSecTime"

    const v15, 0x9290

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x18

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubSecTimeOriginal"

    const v15, 0x9291

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x19

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubSecTimeDigitized"

    const v15, 0x9292

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x1a

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FlashpixVersion"

    const v15, 0xa000

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x1b

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ColorSpace"

    const v15, 0xa001

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x1c

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "PixelXDimension"

    const v15, 0xa002

    invoke-direct {v9, v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0x1d

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "PixelYDimension"

    const v15, 0xa003

    invoke-direct {v9, v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0x1e

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "RelatedSoundFile"

    const v15, 0xa004

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x1f

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "InteroperabilityIFDPointer"

    const v15, 0xa005

    invoke-direct {v9, v14, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x20

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FlashEnergy"

    const v15, 0xa20b

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x21

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SpatialFrequencyResponse"

    const v15, 0xa20c

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x22

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FocalPlaneXResolution"

    const v15, 0xa20e

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x23

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FocalPlaneYResolution"

    const v15, 0xa20f

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x24

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x25

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubjectLocation"

    const v15, 0xa214

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x26

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExposureIndex"

    const v15, 0xa215

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x27

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SensingMethod"

    const v15, 0xa217

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x28

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FileSource"

    const v15, 0xa300

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x29

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SceneType"

    const v15, 0xa301

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x2a

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "CFAPattern"

    const v15, 0xa302

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x2b

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "CustomRendered"

    const v15, 0xa401

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x2c

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ExposureMode"

    const v15, 0xa402

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x2d

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "WhiteBalance"

    const v15, 0xa403

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x2e

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "DigitalZoomRatio"

    const v15, 0xa404

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x2f

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x30

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SceneCaptureType"

    const v15, 0xa406

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x31

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GainControl"

    const v15, 0xa407

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x32

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "Contrast"

    const v15, 0xa408

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x33

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "Saturation"

    const v15, 0xa409

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x34

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "Sharpness"

    const v15, 0xa40a

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x35

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "DeviceSettingDescription"

    const v15, 0xa40b

    invoke-direct {v9, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x36

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "SubjectDistanceRange"

    const v15, 0xa40c

    invoke-direct {v9, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x37

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "ImageUniqueID"

    const v15, 0xa420

    invoke-direct {v9, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x38

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v9, v14, v15, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x39

    aput-object v9, v4, v14

    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "DefaultCropSize"

    const v15, 0xc620

    invoke-direct {v9, v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0x3a

    aput-object v9, v4, v14

    const/16 v9, 0x1f

    new-array v9, v9, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 14
    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSVersionID"

    invoke-direct {v14, v15, v8, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v8

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSLatitudeRef"

    invoke-direct {v14, v15, v6, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v6

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSLatitude"

    invoke-direct {v14, v15, v10, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v10

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSLongitudeRef"

    invoke-direct {v14, v15, v0, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v0

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSLongitude"

    invoke-direct {v14, v15, v1, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v1

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSAltitudeRef"

    invoke-direct {v14, v15, v11, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v11

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSAltitude"

    invoke-direct {v14, v15, v2, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v2

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSTimeStamp"

    invoke-direct {v14, v15, v12, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v12

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSSatellites"

    invoke-direct {v14, v15, v5, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v5

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSStatus"

    invoke-direct {v14, v15, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v13

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSMeasureMode"

    invoke-direct {v14, v15, v3, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v3

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "GPSDOP"

    const/16 v3, 0xb

    invoke-direct {v14, v15, v3, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v3

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestBearingRef"

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v3, v14, v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v3, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v3, v14, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v3, v14, v15, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v3, v14, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v9, v15

    new-array v3, v6, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 15
    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "InteroperabilityIndex"

    invoke-direct {v14, v15, v6, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v3, v8

    const/16 v14, 0x25

    new-array v14, v14, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 16
    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "NewSubfileType"

    const/16 v5, 0xfe

    invoke-direct {v15, v13, v5, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v15, v14, v8

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v5, v13, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v14, v6

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "ThumbnailImageWidth"

    const/16 v15, 0x100

    invoke-direct {v5, v13, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    aput-object v5, v14, v10

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "ThumbnailImageLength"

    const/16 v15, 0x101

    invoke-direct {v5, v13, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    aput-object v5, v14, v0

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v5, v13, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v14, v1

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v5, v13, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v14, v11

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v5, v13, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v14, v2

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ImageDescription"

    const/16 v13, 0x10e

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v14, v12

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Make"

    const/16 v13, 0x10f

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x8

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Model"

    const/16 v13, 0x110

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x9

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "StripOffsets"

    const/16 v13, 0x111

    invoke-direct {v2, v5, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0xa

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Orientation"

    const/16 v13, 0x112

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xb

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "SamplesPerPixel"

    const/16 v13, 0x115

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xc

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "RowsPerStrip"

    const/16 v13, 0x116

    invoke-direct {v2, v5, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0xd

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "StripByteCounts"

    const/16 v13, 0x117

    invoke-direct {v2, v5, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0xe

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "XResolution"

    const/16 v13, 0x11a

    invoke-direct {v2, v5, v13, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xf

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "YResolution"

    const/16 v13, 0x11b

    invoke-direct {v2, v5, v13, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x10

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "PlanarConfiguration"

    const/16 v13, 0x11c

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x11

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ResolutionUnit"

    const/16 v13, 0x128

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "TransferFunction"

    const/16 v13, 0x12d

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x13

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Software"

    const/16 v13, 0x131

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "DateTime"

    const/16 v13, 0x132

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x15

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Artist"

    const/16 v13, 0x13b

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "WhitePoint"

    const/16 v13, 0x13e

    invoke-direct {v2, v5, v13, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x17

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "PrimaryChromaticities"

    const/16 v13, 0x13f

    invoke-direct {v2, v5, v13, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x18

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v13, 0x14a

    invoke-direct {v2, v5, v13, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x19

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "JPEGInterchangeFormat"

    const/16 v13, 0x201

    invoke-direct {v2, v5, v13, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1a

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "JPEGInterchangeFormatLength"

    const/16 v13, 0x202

    invoke-direct {v2, v5, v13, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1b

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "YCbCrCoefficients"

    const/16 v13, 0x211

    invoke-direct {v2, v5, v13, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1c

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "YCbCrSubSampling"

    const/16 v13, 0x212

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1d

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "YCbCrPositioning"

    const/16 v13, 0x213

    invoke-direct {v2, v5, v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1e

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v13, 0x214

    invoke-direct {v2, v5, v13, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1f

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "Copyright"

    const v13, 0x8298

    invoke-direct {v2, v5, v13, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v13, 0x8769

    invoke-direct {v2, v5, v13, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v13, 0x8825

    invoke-direct {v2, v5, v13, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "DNGVersion"

    const v13, 0xc612

    invoke-direct {v2, v5, v13, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v2, v14, v5

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v5, "DefaultCropSize"

    const v13, 0xc620

    invoke-direct {v2, v5, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x24

    aput-object v2, v14, v5

    new-array v2, v0, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 17
    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "ThumbnailImage"

    const/16 v15, 0x100

    invoke-direct {v5, v13, v15, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v8

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "CameraSettingsIFDPointer"

    const/16 v15, 0x2020

    invoke-direct {v5, v13, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v6

    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "ImageProcessingIFDPointer"

    const/16 v15, 0x2040

    invoke-direct {v5, v13, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v10

    new-array v5, v10, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 18
    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "PreviewImageStart"

    const/16 v12, 0x101

    invoke-direct {v13, v15, v12, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v13, v5, v8

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "PreviewImageLength"

    const/16 v15, 0x102

    invoke-direct {v12, v13, v15, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v5, v6

    new-array v1, v6, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 19
    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v13, "AspectFrame"

    const/16 v15, 0x1113

    invoke-direct {v12, v13, v15, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v1, v8

    new-array v12, v6, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 20
    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v15, "ColorSpace"

    const/16 v11, 0x37

    invoke-direct {v13, v15, v11, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v13, v12, v8

    const/16 v11, 0xa

    new-array v13, v11, [[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aput-object v7, v13, v8

    aput-object v4, v13, v6

    aput-object v9, v13, v10

    aput-object v3, v13, v0

    const/4 v3, 0x4

    aput-object v14, v13, v3

    const/4 v4, 0x5

    aput-object v7, v13, v4

    const/4 v4, 0x6

    aput-object v2, v13, v4

    const/4 v2, 0x7

    aput-object v5, v13, v2

    const/16 v2, 0x8

    aput-object v1, v13, v2

    const/16 v1, 0x9

    aput-object v12, v13, v1

    .line 21
    sput-object v13, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    new-array v1, v4, [Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 22
    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v4, "SubIFDPointer"

    const/16 v5, 0x14a

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v4, "ExifIFDPointer"

    const v5, 0x8769

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v4, "GPSInfoIFDPointer"

    const v5, 0x8825

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v4, "InteroperabilityIFDPointer"

    const v5, 0xa005

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v0

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v4, "CameraSettingsIFDPointer"

    const/16 v5, 0x2020

    invoke-direct {v2, v4, v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v2, v3, v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    .line 24
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    .line 25
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "FNumber"

    const-string v3, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v7, "GPSTimeStamp"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 26
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifPointerTagMap:Landroid/util/SparseIntArray;

    .line 27
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    const-string v2, "Exif\u0000\u0000"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    const-string v2, "MMIMETA"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MMIMETA_APP6:[B

    .line 30
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    .line 31
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move v1, v8

    .line 32
    :goto_0
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_TAGS:[[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 33
    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    aget-object v2, v2, v1

    array-length v4, v2

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v7, v2, v5

    .line 36
    sget-object v9, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    iget v11, v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v9, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v11, v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v9, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifPointerTagMap:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v3, v2, v8

    iget v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    aget-object v3, v2, v6

    iget v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    aget-object v3, v2, v10

    iget v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    aget-object v3, v2, v0

    iget v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x4

    .line 42
    aget-object v0, v2, v0

    iget v0, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x5

    .line 43
    aget-object v0, v2, v0

    iget v0, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const-string v0, "^[a-zA-Z0-9\\-_.]*"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->STRING_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, ".*[1-9].*"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 10
    :try_start_0
    sget v4, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p1, v1, v2, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 12
    :try_start_1
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 13
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 15
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    .line 16
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fileDescriptor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    .line 24
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 26
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    .line 27
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    .line 28
    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 29
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 30
    move-object v1, p1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    iput-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 31
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 32
    :cond_0
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 34
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 35
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 36
    :cond_1
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 38
    :try_start_0
    sget v6, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 39
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 40
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 42
    :cond_2
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 43
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 44
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 45
    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->loadAttributes(Ljava/io/InputStream;)V

    return-void
.end method

.method public static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, [I

    .line 3
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_9

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    aget-object v0, p0, v7

    invoke-static {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 6
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v6, v1, :cond_8

    .line 7
    aget-object v1, p0, v6

    invoke-static {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v2, v7, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    :goto_2
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_4

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v7, v8, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, v8, :cond_4

    .line 11
    :cond_3
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    if-ne v2, v4, :cond_5

    if-ne v1, v4, :cond_5

    .line 12
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v4, :cond_6

    .line 13
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v4, :cond_7

    .line 14
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "/"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_f

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 17
    array-length v0, p0

    if-ne v0, v2, :cond_e

    .line 18
    :try_start_0
    aget-object v0, p0, v7

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 19
    aget-object p0, p0, v6

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    cmp-long p0, v0, v8

    const/16 v2, 0xa

    if-ltz p0, :cond_d

    cmp-long p0, v6, v8

    if-gez p0, :cond_a

    goto :goto_6

    :cond_a
    const-wide/32 v8, 0x7fffffff

    cmp-long p0, v0, v8

    const/4 v0, 0x5

    if-gtz p0, :cond_c

    cmp-long p0, v6, v8

    if-lez p0, :cond_b

    goto :goto_5

    .line 20
    :cond_b
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 21
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 22
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 23
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 24
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v8

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v10, 0xffff

    cmp-long v1, v6, v10

    if-gtz v1, :cond_10

    .line 26
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 27
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_11

    .line 28
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 30
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 31
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 32
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final addApp6ByteArray([B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    .line 5
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 8
    invoke-static {v3, v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 10
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v3, v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 14
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v1, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v1

    .line 17
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 18
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {v3, v4, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    .line 21
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7
    iget-object v0, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    return-void
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getExifAttribute(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget p1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    return-object v1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7
    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    .line 9
    array-length p1, p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    return-object v1

    .line 10
    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    iget-wide v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-float v2, v2

    aget-object v3, p0, v1

    iget-wide v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p0, v1

    iget-wide v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-float v2, v2

    aget-object v3, p0, v1

    iget-wide v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p0, v1

    iget-wide v2, v2, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-float v2, v2

    aget-object p0, p0, v1

    iget-wide v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-float p0, v3

    div-float/2addr v2, p0

    float-to-int p0, v2

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%02d:%02d:%02d"

    .line 14
    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public final getAttributeInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getExifAttribute(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public final getExifAttribute(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHeifAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "yes"

    .line 1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata$1;

    invoke-direct {v2, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$1;-><init>(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x11

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    .line 6
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x1e

    .line 7
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f

    .line 8
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    .line 10
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x13

    .line 11
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x18

    .line 12
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object p1, v3

    move-object v0, p1

    :goto_0
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "ImageWidth"

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v3

    .line 15
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "ImageLength"

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    .line 18
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_7

    const/4 p1, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_6

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_5

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    goto :goto_1

    :cond_6
    const/4 p1, 0x6

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "Orientation"

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 21
    invoke-static {p1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    .line 22
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 24
    throw p0
.end method

.method public final getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    iput-object v0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    int-to-long v0, p2

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v0

    const-string v1, "Invalid marker: "

    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_15

    add-int/2addr p2, v3

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_14

    add-int/2addr p2, v3

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v0

    add-int/2addr p2, v3

    const/16 v1, -0x27

    if-eq v0, v1, :cond_13

    const/16 v1, -0x26

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/4 v4, -0x2

    add-int/2addr v1, v4

    add-int/lit8 p2, p2, 0x2

    const-string v5, "Invalid length"

    if-ltz v1, :cond_12

    const/16 v6, -0x1f

    const/4 v7, 0x0

    const-string v8, "Invalid exif"

    if-eq v0, v6, :cond_9

    const/16 v6, -0x1e

    if-eq v0, v6, :cond_5

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_2

    .line 9
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v6, v4

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v6, v7, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    const-string v6, "ImageLength"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v6, v4

    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 15
    invoke-static {v6, v7, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    const-string v6, "ImageWidth"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x5

    goto/16 :goto_2

    .line 16
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid SOFx"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :pswitch_1
    new-array v0, v1, [B

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_2

    add-int/2addr p2, v1

    .line 19
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addApp6ByteArray([B)V

    goto/16 :goto_1

    .line 20
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_3
    new-array v0, v1, [B

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_4

    const-string v1, "UserComment"

    .line 23
    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    .line 24
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 25
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_5
    :pswitch_2
    new-array v4, v1, [B

    .line 27
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v1, :cond_8

    add-int/2addr p2, v1

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    .line 30
    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const/4 v0, 0x6

    if-ge v1, v0, :cond_a

    goto :goto_2

    :cond_a
    new-array v4, v0, [B

    .line 34
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_11

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v1, v1, -0x6

    .line 35
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    if-lez v1, :cond_10

    .line 36
    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifOffset:I

    .line 37
    new-array v0, v1, [B

    .line 38
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_f

    add-int/2addr p2, v1

    .line 39
    invoke-virtual {p0, v0, p3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readExifSegment([BI)V

    :cond_c
    :goto_1
    move v1, v7

    :goto_2
    if-ltz v1, :cond_e

    .line 40
    invoke-virtual {p1, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v1, :cond_d

    add-int/2addr p2, v1

    goto/16 :goto_0

    .line 41
    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid JPEG segment"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_e
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_f
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_10
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_11
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_12
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_13
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 48
    iput-object p0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void

    .line 49
    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid marker:"

    .line 50
    invoke-static {p1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    and-int/lit16 p2, v0, 0xff

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_15
    new-instance p0, Ljava/io/IOException;

    .line 53
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    and-int/lit16 p2, v0, 0xff

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_16
    new-instance p0, Ljava/io/IOException;

    .line 56
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    and-int/lit16 p2, v0, 0xff

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1c
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x1388

    .line 1
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v3, v2, [B

    .line 2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v4, 0x0

    .line 4
    :goto_0
    sget-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v4, v6, :cond_1

    .line 5
    aget-byte v6, v3, v4

    aget-byte v5, v5, v4

    if-eq v6, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    const-string v4, "FUJIFILMCCD-RAW"

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v6, 0x0

    .line 7
    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_4

    .line 8
    aget-byte v8, v3, v6

    aget-byte v9, v4, v6

    if-eq v8, v9, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_3
    if-eqz v4, :cond_5

    const/16 v0, 0x9

    return v0

    :cond_5
    const/4 v4, 0x0

    .line 9
    :try_start_0
    new-instance v6, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v6, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 11
    iput-object v4, v6, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 12
    invoke-virtual {v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v8, v4

    new-array v4, v5, [B

    .line 13
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    .line 14
    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_TYPE_FTYP:[B

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_7

    :cond_6
    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    const-wide/16 v12, 0x10

    const-wide/16 v14, 0x8

    if-nez v4, :cond_7

    .line 15
    invoke-virtual {v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v8

    cmp-long v4, v8, v12

    if-gez v4, :cond_8

    goto :goto_7

    :cond_7
    move-wide v12, v14

    :cond_8
    int-to-long v1, v2

    cmp-long v4, v8, v1

    if-lez v4, :cond_9

    move-wide v8, v1

    :cond_9
    sub-long/2addr v8, v12

    cmp-long v1, v8, v14

    if-gez v1, :cond_a

    goto :goto_7

    :cond_a
    new-array v1, v5, [B

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    const-wide/16 v14, 0x4

    .line 16
    div-long v14, v8, v14

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    .line 17
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-eq v14, v5, :cond_b

    goto :goto_7

    :cond_b
    cmp-long v14, v12, v10

    if-nez v14, :cond_c

    goto :goto_6

    .line 18
    :cond_c
    sget-object v14, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_MIF1:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_d

    move v2, v7

    goto :goto_5

    .line 19
    :cond_d
    sget-object v14, Lcom/motorola/camera/photometadata/PhotoMetadata;->HEIF_BRAND_HEIC:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_e

    move v4, v7

    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    .line 20
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    move v1, v7

    goto :goto_b

    :cond_f
    :goto_6
    add-long/2addr v12, v10

    goto :goto_4

    :cond_10
    :goto_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_8

    :catch_0
    move-object v4, v6

    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 21
    :cond_11
    throw v0

    :catch_1
    :goto_9
    if-eqz v4, :cond_12

    .line 22
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_12
    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_13

    const/16 v0, 0xc

    return v0

    .line 23
    :cond_13
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v1, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 25
    iput-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 26
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x4f52

    if-eq v1, v2, :cond_15

    const/16 v2, 0x5352

    if-ne v1, v2, :cond_14

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    move v1, v7

    :goto_d
    if-eqz v1, :cond_16

    const/4 v0, 0x7

    return v0

    .line 27
    :cond_16
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v1, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 29
    iput-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 30
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_17

    goto :goto_e

    :cond_17
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_18

    const/16 v0, 0xa

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final getMnIntValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getMnLongValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)J
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p0, -0x1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p2, p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final getOrfAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "MakerNote"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_4

    .line 3
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5
    iput-object p1, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 6
    sget-object p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_1:[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    .line 7
    invoke-virtual {v1, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v4, 0x0

    .line 8
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 9
    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->ORF_MAKER_NOTE_HEADER_2:[B

    const/16 v5, 0xa

    new-array v5, v5, [B

    .line 10
    invoke-virtual {v1, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    .line 11
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x8

    .line 12
    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v3, 0xc

    .line 14
    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x7

    .line 17
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v2, "PreviewImageStart"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PreviewImageLength"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x8

    .line 23
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "AspectFrame"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 25
    invoke-virtual {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, [I

    const/4 v1, 0x2

    .line 27
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_4

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_4

    .line 28
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 29
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_3

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 31
    invoke-static {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 33
    invoke-static {v2, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string p1, "ImageLength"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final getRafAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 7
    invoke-virtual {p0, p1, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 9
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    iput-object v0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    const/16 v5, 0x111

    if-ne v3, v5, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 16
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 17
    invoke-static {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 19
    invoke-static {p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 22
    :cond_0
    invoke-virtual {p1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->parseTiffHeaders(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    const/4 v1, 0x5

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    const/4 v2, 0x4

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->swapBasedOnImageSize(II)V

    .line 7
    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->swapBasedOnImageSize(II)V

    .line 8
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->swapBasedOnImageSize(II)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v4, "PixelXDimension"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    .line 13
    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PhotoMetadata"

    const-string v0, "No image meets the size requirements of a thumbnail image."

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_2
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "MakerNote"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_3

    .line 23
    new-instance v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 25
    iput-object p1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    const-wide/16 v1, 0x6

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ColorSpace"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_3

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final getRw2Attributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mRw2JpgFromRawOffset:I

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ISO"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ISOSpeedRatings"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final getThumbnail()[B
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final getThumbnailBytes()[B
    .locals 7

    const-string v0, "PhotoMetadata"

    .line 1
    iget-boolean v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    const-string p0, "Cannot read thumbnail from byte array without mark/reset support"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    .line 9
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_4
    const-string p0, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 11
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    .line 13
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_6

    .line 14
    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 15
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 16
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v3

    goto :goto_0

    :cond_6
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_9

    .line 17
    :try_start_5
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    iget v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v5, v5

    cmp-long v3, v3, v5

    const-string v4, "Corrupted image"

    if-nez v3, :cond_8

    .line 18
    :try_start_6
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    new-array v3, v3, [B

    .line 19
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    if-ne v5, v6, :cond_7

    .line 20
    iput-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 21
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    .line 22
    :cond_7
    :try_start_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_9
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v2

    :goto_1
    :try_start_8
    const-string v3, "Encountered exception while getting thumbnail"

    .line 25
    invoke-static {v0, v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 26
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :goto_2
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 27
    throw p0
.end method

.method public final getThumbnailSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    :cond_1
    const/4 v0, 0x6

    .line 4
    iget v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const/4 v0, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne v3, v2, :cond_3

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    .line 11
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    :cond_3
    return-object v1

    .line 12
    :cond_4
    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const/4 v2, 0x0

    iget p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    invoke-static {v1, v2, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 15
    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public final handleThumbnailFromJfif(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 6
    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 7
    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfMakerNoteOffset:I

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifOffset:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    .line 10
    iput v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I

    .line 11
    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    const/4 v1, 0x6

    .line 12
    iput v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_3

    .line 14
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 16
    invoke-virtual {p1, p2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    .line 17
    iput-object p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    :cond_3
    return-void
.end method

.method public final isThumbnail(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    const/16 p1, 0x200

    if-gt v0, p1, :cond_0

    if-gt p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    .line 4
    new-instance p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getHeifAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 7
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRw2Attributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRafAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 9
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getOrfAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 10
    :pswitch_4
    invoke-virtual {p0, p1, v0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    goto :goto_1

    .line 11
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getRawAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    .line 12
    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailData(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDefaultValuesForCompatibility()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDefaultValuesForCompatibility()V

    .line 16
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final parseTiffHeaders(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2
    iput-object v0, p1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 4
    iget p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 p0, 0x2a

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid start code: "

    .line 6
    invoke-static {p1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_4

    if-ge p0, p2, :cond_4

    add-int/lit8 p0, p0, -0x8

    if-lez p0, :cond_3

    .line 9
    invoke-virtual {p1, p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, p0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t jump to first Ifd: "

    .line 11
    invoke-static {p2, p0}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 13
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid first Ifd offset: "

    .line 14
    invoke-static {p2, p0}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readByteOrder(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 p1, 0x4949

    if-eq p0, p1, :cond_1

    const/16 p1, 0x4d4d

    if-ne p0, p1, :cond_0

    .line 2
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid byte order: "

    .line 4
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public final readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 2
    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->parseTiffHeaders(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "MakerNote"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5
    new-instance p2, Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;-><init>(Ljava/nio/ByteOrder;)V

    iput-object p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->parse([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    :cond_0
    :goto_0
    return-void
.end method

.method public final readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v2, v2, 0x2

    iget v3, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-le v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 3
    iget v3, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    mul-int/lit8 v4, v2, 0xc

    add-int/2addr v4, v3

    iget v3, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v4, v3, :cond_1f

    if-gtz v2, :cond_1

    goto/16 :goto_f

    :cond_1
    move/from16 v5, p2

    const/4 v4, 0x0

    :goto_0
    const-string v6, "PhotoMetadata"

    const/4 v9, 0x4

    if-ge v4, v2, :cond_1b

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v12

    .line 7
    iget v13, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v13, v9

    int-to-long v13, v13

    .line 8
    sget-object v15, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForReading:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    if-nez v15, :cond_2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v2

    goto :goto_3

    :cond_2
    if-lez v11, :cond_6

    .line 10
    sget-object v3, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v9, 0xe

    if-lt v11, v9, :cond_3

    goto :goto_2

    :cond_3
    int-to-long v7, v12

    .line 11
    aget v3, v3, v11

    move v9, v2

    int-to-long v2, v3

    mul-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v16, v2, v7

    if-ltz v16, :cond_5

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v2, v7

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_5

    .line 12
    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    :goto_2
    move v9, v2

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-wide/16 v2, 0x0

    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_7

    .line 14
    invoke-virtual {v1, v13, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    move/from16 v17, v4

    move v2, v5

    move/from16 v16, v9

    move/from16 v5, p2

    goto/16 :goto_e

    :cond_7
    const-wide/16 v7, 0x4

    cmp-long v7, v2, v7

    const-string v8, "Compression"

    if-lez v7, :cond_d

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v7

    move/from16 v16, v9

    .line 16
    iget v9, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    move/from16 v17, v4

    const/4 v4, 0x7

    if-ne v9, v4, :cond_a

    .line 17
    iget-object v4, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    const-string v9, "MakerNote"

    if-ne v4, v9, :cond_8

    .line 18
    iput v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfMakerNoteOffset:I

    goto :goto_6

    :cond_8
    const/4 v9, 0x6

    if-ne v5, v9, :cond_9

    const-string v5, "ThumbnailImage"

    if-ne v4, v5, :cond_9

    .line 19
    iput v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailOffset:I

    .line 20
    iput v12, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailLength:I

    .line 21
    iget-object v4, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    invoke-static {v9, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    .line 23
    iget v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailOffset:I

    move/from16 v18, v11

    move/from16 v19, v12

    int-to-long v11, v5

    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 24
    invoke-static {v11, v12, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v5

    .line 25
    iget v9, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mOrfThumbnailLength:I

    int-to-long v11, v9

    iget-object v9, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 26
    invoke-static {v11, v12, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v9

    .line 27
    iget-object v11, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v4, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v11, "JPEGInterchangeFormat"

    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v4, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "JPEGInterchangeFormatLength"

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v18, v11

    move/from16 v19, v12

    goto :goto_7

    :cond_a
    move/from16 v18, v11

    move/from16 v19, v12

    const/16 v4, 0xa

    if-ne v9, v4, :cond_b

    .line 30
    iget-object v4, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    const-string v5, "JpgFromRaw"

    if-ne v4, v5, :cond_b

    .line 31
    iput v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mRw2JpgFromRawOffset:I

    :cond_b
    :goto_7
    int-to-long v4, v7

    add-long v11, v4, v2

    .line 32
    iget v9, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    move-object/from16 v20, v8

    int-to-long v8, v9

    cmp-long v8, v11, v8

    if-gtz v8, :cond_c

    .line 33
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    goto :goto_8

    .line 34
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1, v13, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_c

    :cond_d
    move/from16 v17, v4

    move-object/from16 v20, v8

    move/from16 v16, v9

    move/from16 v18, v11

    move/from16 v19, v12

    .line 36
    :goto_8
    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifPointerTagMap:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/16 v7, 0x8

    const/4 v8, 0x3

    if-eq v4, v5, :cond_14

    const-wide/16 v2, -0x1

    move/from16 v5, v18

    if-eq v5, v8, :cond_11

    const/4 v8, 0x4

    if-eq v5, v8, :cond_10

    if-eq v5, v7, :cond_f

    const/16 v7, 0x9

    if-eq v5, v7, :cond_e

    const/16 v7, 0xd

    if-eq v5, v7, :cond_e

    goto :goto_a

    .line 37
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v2

    goto :goto_9

    .line 38
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v2

    goto :goto_9

    .line 39
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_a

    .line 40
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    :goto_9
    int-to-long v2, v2

    :goto_a
    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-lez v5, :cond_13

    .line 41
    iget v5, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    int-to-long v7, v5

    cmp-long v5, v2, v7

    if-gez v5, :cond_13

    .line 42
    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    long-to-int v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 43
    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    iget v6, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 45
    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    goto :goto_b

    .line 46
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 47
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_b
    invoke-virtual {v1, v13, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    :goto_c
    move/from16 v5, p2

    goto :goto_d

    :cond_14
    move/from16 v5, v18

    long-to-int v2, v2

    .line 49
    new-array v2, v2, [B

    .line 50
    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    .line 51
    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move/from16 v4, v19

    .line 52
    invoke-direct {v3, v5, v4, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    .line 53
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    move/from16 v5, p2

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v4, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v2, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    const-string v4, "DNGVersion"

    if-ne v2, v4, :cond_15

    .line 55
    iput v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    :cond_15
    const-string v4, "Make"

    if-eq v2, v4, :cond_16

    const-string v4, "Model"

    if-ne v2, v4, :cond_17

    .line 56
    :cond_16
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 57
    invoke-virtual {v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PENTAX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    iget-object v2, v15, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v4, v20

    if-ne v2, v4, :cond_19

    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 58
    invoke-virtual {v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_19

    .line 59
    :cond_18
    iput v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    .line 60
    :cond_19
    iget v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    int-to-long v2, v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_1a

    .line 61
    invoke-virtual {v1, v13, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    :cond_1a
    :goto_d
    move v2, v5

    :goto_e
    add-int/lit8 v4, v17, 0x1

    int-to-short v4, v4

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_0

    .line 62
    :cond_1b
    iget v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 63
    iget v3, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v2, v3, :cond_1f

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-lez v5, :cond_1e

    .line 65
    iget v5, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-ge v2, v5, :cond_1e

    .line 66
    iget-object v5, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 67
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributesOffsets:Ljava/util/HashSet;

    iget v5, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 69
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 70
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    goto :goto_f

    .line 71
    :cond_1c
    iget-object v2, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 72
    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->readImageFileDirectory(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V

    goto :goto_f

    .line 73
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 74
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_f
    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveAttributes()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsInputStream:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "temp"

    const-string v4, "jpg"

    .line 5
    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 7
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 8
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-static {v4, v5}, Lcom/motorola/camera/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v2, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    move-object v0, v2

    move-object v2, v4

    goto/16 :goto_9

    :catch_1
    move-exception p0

    :goto_1
    move-object v0, v2

    move-object v2, v4

    goto/16 :goto_8

    :cond_0
    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 10
    :goto_2
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 12
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 13
    :try_start_4
    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_1

    .line 14
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v5, v0, v1, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 15
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :cond_1
    move-object v0, v2

    .line 16
    :goto_3
    :try_start_5
    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 17
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 18
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 20
    iput-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    return-void

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-exception p0

    :goto_4
    move-object v0, v2

    move-object v2, v4

    goto :goto_7

    :catch_3
    move-exception p0

    :goto_5
    move-object v0, v2

    move-object v2, v4

    goto :goto_6

    :catchall_4
    move-exception p0

    move-object v0, v2

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v0, v2

    .line 21
    :goto_6
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception p0

    .line 22
    :goto_7
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 23
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 24
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 25
    throw p0

    :catchall_6
    move-exception p0

    move-object v0, v2

    goto :goto_9

    :catch_5
    move-exception p0

    move-object v0, v2

    .line 26
    :goto_8
    :try_start_7
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p0

    .line 27
    :goto_9
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 29
    throw p0

    .line 30
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final saveAttributesToByteArray()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mIsSupportedFile:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot read inputstream without mark/reset support"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    .line 7
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    .line 8
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 9
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 10
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 13
    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    .line 14
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 15
    :goto_1
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    move-object v1, v0

    .line 16
    :goto_3
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 17
    throw p0

    .line 18
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance v3, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v4, p2

    invoke-direct {v3, v4, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const-string v4, "Invalid marker"

    const/4 v5, -0x1

    if-ne v0, v5, :cond_38

    .line 4
    invoke-virtual {v3, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v6, -0x28

    if-ne v0, v6, :cond_37

    .line 6
    invoke-virtual {v3, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 7
    invoke-virtual {v3, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v0, -0x1f

    .line 8
    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v0, 0xa

    new-array v5, v0, [I

    new-array v6, v0, [I

    .line 9
    sget-object v7, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x6

    if-ge v8, v9, :cond_0

    aget-object v9, v7, v8

    .line 10
    iget-object v9, v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "JPEGInterchangeFormat"

    .line 11
    invoke-virtual {v1, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->removeAttribute(Ljava/lang/String;)V

    const-string v8, "JPEGInterchangeFormatLength"

    .line 12
    invoke-virtual {v1, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->removeAttribute(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_3

    .line 13
    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    .line 14
    check-cast v13, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1

    .line 16
    iget-object v14, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_3
    iget-object v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz v9, :cond_8

    .line 18
    iget-object v10, v9, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    mul-int/lit8 v11, v10, 0xc

    add-int/2addr v11, v0

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    new-instance v12, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v14, v9, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 21
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    sget-object v14, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->VENDOR_SIGNATURE:[B

    invoke-virtual {v12, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    const/16 v14, 0x101

    .line 23
    invoke-virtual {v12, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 24
    invoke-virtual {v12, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    int-to-short v14, v10

    .line 25
    invoke-virtual {v12, v14}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v10, :cond_6

    .line 26
    iget-object v15, v9, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    move/from16 p1, v10

    .line 27
    iget-object v10, v9, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    int-to-short v15, v15

    .line 28
    invoke-virtual {v12, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 29
    iget v15, v10, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    int-to-short v15, v15

    .line 30
    invoke-virtual {v12, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 31
    iget v15, v10, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    invoke-virtual {v12, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    .line 32
    iget-object v15, v10, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    move-object/from16 p2, v9

    array-length v9, v15

    move-object/from16 v16, v4

    const/4 v4, 0x4

    if-le v9, v4, :cond_4

    .line 33
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v11

    invoke-virtual {v12, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    .line 34
    iget-object v4, v10, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    invoke-virtual {v13, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    .line 35
    :cond_4
    invoke-virtual {v12, v15}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    rsub-int/lit8 v4, v9, 0x4

    :goto_4
    add-int/lit8 v9, v4, -0x1

    if-lez v4, :cond_5

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v12, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    move v4, v9

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, p1

    move-object/from16 v9, p2

    move-object/from16 v4, v16

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    .line 37
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    .line 38
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v11

    const/16 v9, 0x7fff

    if-gt v4, v9, :cond_7

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 40
    array-length v4, v0

    if-lez v4, :cond_9

    .line 41
    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const/4 v9, 0x7

    array-length v10, v0

    .line 42
    invoke-direct {v4, v9, v10, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    .line 43
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v9, "MakerNote"

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 44
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Number of elements too large to save"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v16, v4

    .line 45
    :cond_9
    :goto_6
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-wide/16 v9, 0x0

    if-nez v0, :cond_a

    .line 46
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v11, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v4, v11, v4

    iget-object v4, v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 47
    invoke-static {v9, v10, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v11

    .line 48
    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_a
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 50
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v11, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v11, v11, v4

    iget-object v11, v11, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 51
    invoke-static {v9, v10, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v12

    .line 52
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_b
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 54
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v12, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v12, v12, v11

    iget-object v12, v12, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 55
    invoke-static {v9, v10, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v13

    .line 56
    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_c
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_d

    .line 58
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v13, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 59
    invoke-static {v9, v10, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v9

    .line 60
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    int-to-long v9, v9

    iget-object v13, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 62
    invoke-static {v9, v10, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v9

    .line 63
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v8, "Compression"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 65
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 66
    invoke-static {v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v9

    .line 67
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v0, 0x0

    :goto_7
    const/16 v8, 0xa

    if-ge v0, v8, :cond_10

    .line 68
    iget-object v8, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_e
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 70
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v12, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v13, v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    aget v12, v12, v13

    iget v10, v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v12, v10

    const/4 v10, 0x4

    if-le v12, v10, :cond_e

    add-int/2addr v9, v12

    goto :goto_8

    .line 72
    :cond_f
    aget v8, v6, v0

    add-int/2addr v8, v9

    aput v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    const/16 v8, 0x8

    const/4 v0, 0x0

    move v9, v8

    :goto_9
    const/16 v10, 0xa

    if-ge v0, v10, :cond_12

    .line 73
    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    .line 74
    aput v9, v5, v0

    .line 75
    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x4

    aget v12, v6, v0

    add-int/2addr v10, v12

    add-int/2addr v9, v10

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 76
    :cond_12
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_16

    iget v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v6, 0x6

    if-ne v0, v6, :cond_16

    const/16 v0, 0x55

    .line 77
    iget-object v6, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    move-object/from16 v17, v6

    move v6, v0

    move-object/from16 v0, v17

    :goto_a
    const/4 v10, 0x0

    const-string v12, "PhotoMetadata"

    if-eqz v0, :cond_13

    if-lez v6, :cond_13

    .line 78
    array-length v13, v0

    add-int/2addr v13, v9

    add-int/2addr v13, v8

    const v14, 0xffff

    if-lt v13, v14, :cond_13

    .line 79
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    .line 80
    array-length v13, v0

    const/4 v14, 0x0

    invoke-static {v0, v14, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v14, v6, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    const-string/jumbo v13, "transcodeThumbnail error: "

    .line 84
    invoke-static {v13}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    :goto_b
    add-int/lit8 v6, v6, -0xa

    goto :goto_a

    :cond_13
    if-eqz v0, :cond_15

    if-gtz v6, :cond_14

    goto :goto_c

    .line 86
    :cond_14
    iput-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    .line 87
    array-length v0, v0

    iput v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    goto :goto_d

    :cond_15
    :goto_c
    const-string v0, "drop thumbnail due to overflow or transcode failure"

    .line 88
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    .line 91
    iput v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    .line 92
    :cond_16
    :goto_d
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_17

    .line 93
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    int-to-long v12, v9

    iget-object v6, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 94
    invoke-static {v12, v13, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v6

    .line 95
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v9, 0x6

    .line 96
    iput v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailOffset:I

    .line 97
    iget v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    add-int/2addr v9, v0

    :cond_17
    add-int/2addr v9, v8

    .line 98
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 99
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v7, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    aget v6, v5, v6

    int-to-long v12, v6

    iget-object v6, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    invoke-static {v12, v13, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v6

    .line 101
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_18
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 103
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    aget v7, v5, v4

    int-to-long v7, v7

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 104
    invoke-static {v7, v8, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v7

    .line 105
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_19
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 107
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_POINTER_TAGS:[Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    aget-object v6, v6, v11

    iget-object v6, v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    aget v7, v5, v11

    int-to-long v7, v7

    iget-object v10, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    int-to-short v0, v9

    .line 108
    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 109
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    .line 110
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v6, :cond_1b

    const/16 v0, 0x4d4d

    goto :goto_e

    :cond_1b
    const/16 v0, 0x4949

    :goto_e
    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 111
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 112
    iput-object v0, v3, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    const/16 v0, 0x2a

    int-to-short v0, v0

    .line 113
    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const-wide/16 v6, 0x8

    long-to-int v0, v6

    .line 114
    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    const/16 v6, 0xa

    :goto_f
    if-ge v0, v6, :cond_22

    .line 115
    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    .line 116
    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    int-to-short v7, v7

    .line 117
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 118
    aget v7, v5, v0

    add-int/2addr v7, v4

    iget-object v8, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x4

    .line 119
    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1c
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 120
    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    .line 121
    iget v10, v10, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    .line 122
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 123
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v11, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v12, v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    aget v11, v11, v12

    iget v12, v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v11, v12

    int-to-short v10, v10

    .line 125
    invoke-virtual {v3, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 126
    iget v10, v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    int-to-short v10, v10

    .line 127
    invoke-virtual {v3, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 128
    iget v10, v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v3, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    const/4 v10, 0x4

    if-le v11, v10, :cond_1d

    int-to-long v9, v8

    long-to-int v9, v9

    .line 129
    invoke-virtual {v3, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/2addr v8, v11

    goto :goto_10

    .line 130
    :cond_1d
    iget-object v9, v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-virtual {v3, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    if-ge v11, v10, :cond_1c

    :goto_11
    if-ge v11, v10, :cond_1c

    const/4 v9, 0x0

    .line 131
    invoke-virtual {v3, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1e
    const/4 v7, 0x4

    if-nez v0, :cond_1f

    .line 132
    iget-object v8, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1f

    aget v7, v5, v7

    int-to-long v7, v7

    long-to-int v7, v7

    .line 133
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_12

    :cond_1f
    const-wide/16 v7, 0x0

    long-to-int v7, v7

    .line 134
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    .line 135
    :goto_12
    iget-object v7, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 137
    iget-object v8, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    array-length v9, v8

    const/4 v10, 0x4

    if-le v9, v10, :cond_20

    .line 138
    array-length v9, v8

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_13

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 139
    :cond_22
    iget-boolean v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-eqz v0, :cond_23

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    .line 141
    :cond_23
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 142
    iput-object v0, v3, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 143
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    if-eqz v0, :cond_24

    .line 144
    new-instance v5, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;)V

    invoke-interface {v0, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 145
    :cond_24
    iget-object v0, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    const/16 v5, -0x1a

    if-eqz v0, :cond_25

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/4 v7, -0x1

    .line 147
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 148
    invoke-virtual {v3, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 149
    array-length v7, v6

    add-int/2addr v7, v4

    int-to-short v7, v7

    .line 150
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 151
    invoke-virtual {v3, v6}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    goto :goto_14

    :cond_25
    const/16 v0, 0x1000

    new-array v6, v0, [B

    .line 152
    :cond_26
    :goto_15
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_36

    .line 153
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x27

    if-eq v7, v8, :cond_35

    const/16 v8, -0x26

    if-eq v7, v8, :cond_35

    const-string v8, "Invalid length"

    const/16 v9, -0x1f

    if-eq v7, v9, :cond_2f

    if-eq v7, v5, :cond_27

    goto :goto_16

    .line 154
    :cond_27
    iget-object v9, v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mApp6Data:Ljava/util/List;

    if-eqz v9, :cond_2d

    const/4 v9, 0x0

    .line 155
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    .line 156
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    if-ltz v9, :cond_2c

    .line 157
    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MMIMETA_APP6:[B

    array-length v11, v10

    .line 158
    new-array v12, v11, [B

    if-lt v9, v11, :cond_2b

    .line 159
    invoke-virtual {v2, v12}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    const-string v14, "Invalid app6 length"

    if-ne v13, v11, :cond_2a

    .line 160
    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_29

    add-int/lit8 v9, v9, -0x2

    sub-int/2addr v9, v11

    .line 161
    invoke-virtual {v2, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    if-ne v7, v9, :cond_28

    goto :goto_15

    .line 162
    :cond_28
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 163
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_29
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_16

    .line 165
    :cond_2a
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 166
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_16

    .line 168
    :cond_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 169
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_16
    const/4 v9, -0x1

    .line 170
    invoke-virtual {v3, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 171
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 172
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-short v9, v7

    .line 173
    invoke-virtual {v3, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_2e

    :goto_17
    if-lez v7, :cond_26

    .line 174
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 175
    invoke-virtual {v2, v6, v9, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_26

    .line 176
    invoke-virtual {v3, v6, v9, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v7, v8

    goto :goto_17

    .line 177
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    sub-int/2addr v9, v4

    if-ltz v9, :cond_34

    const/4 v10, 0x6

    new-array v11, v10, [B

    if-lt v9, v10, :cond_32

    .line 179
    invoke-virtual {v2, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_31

    .line 180
    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_32

    add-int/lit8 v9, v9, -0x6

    .line 181
    invoke-virtual {v2, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    if-ne v7, v9, :cond_30

    goto/16 :goto_15

    .line 182
    :cond_30
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_31
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v8, -0x1

    .line 184
    invoke-virtual {v3, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 185
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v7, v9, 0x2

    int-to-short v7, v7

    .line 186
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const/4 v7, 0x6

    if-lt v9, v7, :cond_33

    add-int/lit8 v9, v9, -0x6

    .line 187
    invoke-virtual {v3, v11}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    :cond_33
    :goto_18
    if-lez v9, :cond_26

    .line 188
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 189
    invoke-virtual {v2, v6, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_26

    .line 190
    invoke-virtual {v3, v6, v8, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v7

    goto :goto_18

    .line 191
    :cond_34
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/4 v0, -0x1

    .line 192
    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 193
    invoke-virtual {v3, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 194
    invoke-static {v2, v3}, Lcom/motorola/camera/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    .line 195
    :cond_36
    new-instance v0, Ljava/io/IOException;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object v1, v4

    .line 196
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move-object v1, v4

    .line 197
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setApp6ByteArray([B)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x4

    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v1, 0x2

    .line 2
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x3

    .line 3
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_1

    add-int v4, v2, v3

    .line 4
    invoke-static {p1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addApp6ByteArray([B)V

    :cond_1
    add-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "PhotoMetadata"

    if-eqz v2, :cond_2

    .line 1
    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "GPSTimeStamp"

    .line 2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_1

    .line 3
    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    .line 7
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v9, v11

    double-to-long v9, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/10000"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/16 v8, 0xa

    if-ge v7, v8, :cond_18

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 11
    iget-boolean v8, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-nez v8, :cond_3

    goto/16 :goto_12

    .line 12
    :cond_3
    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->sExifTagMapsForWriting:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;

    if-eqz v8, :cond_17

    if-nez v2, :cond_4

    .line 13
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 14
    :cond_4
    invoke-static {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 15
    iget v10, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_c

    iget v10, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_5

    goto/16 :goto_5

    .line 16
    :cond_5
    iget v10, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_6

    iget v10, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_7

    .line 18
    :cond_6
    iget v3, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    goto/16 :goto_6

    .line 19
    :cond_7
    iget v10, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    if-eq v10, v4, :cond_b

    const/4 v12, 0x7

    if-eq v10, v12, :cond_b

    if-ne v10, v3, :cond_8

    goto :goto_4

    :cond_8
    const-string v3, "Given tag ("

    const-string v10, ") value didn\'t match with one of expected formats: "

    .line 20
    invoke-static {v3, v1, v10}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21
    sget-object v10, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v12, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    aget-object v12, v10, v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v12, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    const-string v13, ""

    const-string v14, ", "

    if-ne v12, v11, :cond_9

    move-object v8, v13

    goto :goto_2

    .line 23
    :cond_9
    invoke-static {v14}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 24
    iget v8, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    aget-object v8, v10, v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (guess: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v10, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_a

    goto :goto_3

    .line 26
    :cond_a
    invoke-static {v14}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 27
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_b
    :goto_4
    move v3, v10

    goto :goto_6

    .line 29
    :cond_c
    :goto_5
    iget v3, v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    :goto_6
    const-string v8, "/"

    const-string v9, ","

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v12, v7

    move v7, v6

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data format isn\'t one of expected formats: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 31
    :pswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 32
    array-length v8, v3

    new-array v9, v8, [D

    move v10, v6

    .line 33
    :goto_7
    array-length v11, v3

    if-ge v10, v11, :cond_d

    .line 34
    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 35
    :cond_d
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v10, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 36
    sget-object v11, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v12, 0xc

    aget v11, v11, v12

    mul-int/2addr v11, v8

    new-array v11, v11, [B

    .line 37
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 38
    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v10, v6

    :goto_8
    if-ge v10, v8, :cond_e

    .line 39
    aget-wide v13, v9, v10

    .line 40
    invoke-virtual {v11, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 41
    :cond_e
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v9, v12, v8, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    .line 42
    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 43
    :pswitch_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    array-length v9, v3

    new-array v10, v9, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    move v11, v6

    .line 45
    :goto_9
    array-length v12, v3

    if-ge v11, v12, :cond_f

    .line 46
    aget-object v12, v3, v11

    invoke-virtual {v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 47
    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    aget-object v14, v12, v6

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v14, v14

    aget-object v4, v12, v4

    move v12, v7

    .line 48
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-direct {v13, v14, v15, v6, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    move v7, v12

    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    move v12, v7

    .line 49
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 50
    sget-object v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    mul-int/2addr v6, v9

    new-array v6, v6, [B

    .line 51
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 52
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v9, :cond_10

    .line 53
    aget-object v7, v10, v4

    .line 54
    iget-wide v13, v7, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-int v8, v13

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-wide v7, v7, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 56
    :cond_10
    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/16 v7, 0xa

    invoke-direct {v4, v7, v9, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    .line 57
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_3
    move v12, v7

    .line 58
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    array-length v4, v3

    new-array v6, v4, [I

    const/4 v7, 0x0

    .line 60
    :goto_b
    array-length v8, v3

    if-ge v7, v8, :cond_11

    .line 61
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 62
    :cond_11
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v7, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 63
    sget-object v8, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    mul-int/2addr v8, v4

    new-array v8, v8, [B

    .line 64
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 65
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v4, :cond_12

    .line 66
    aget v10, v6, v7

    .line 67
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 68
    :cond_12
    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v6, v9, v4, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    .line 69
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_4
    move v12, v7

    .line 70
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 71
    array-length v4, v3

    new-array v4, v4, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    const/4 v6, 0x0

    .line 72
    :goto_d
    array-length v7, v3

    if-ge v6, v7, :cond_13

    .line 73
    aget-object v7, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 74
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    const/4 v10, 0x0

    aget-object v11, v7, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    const/4 v13, 0x1

    aget-object v7, v7, v13

    .line 75
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    invoke-direct {v9, v10, v11, v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 76
    :cond_13
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 77
    invoke-static {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    .line 78
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_5
    move v12, v7

    .line 79
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v10, 0x0

    .line 81
    :goto_e
    array-length v6, v3

    if-ge v10, v6, :cond_14

    .line 82
    aget-object v6, v3, v10

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 83
    :cond_14
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 84
    invoke-static {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    .line 85
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_6
    move v12, v7

    .line 86
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 87
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v10, 0x0

    .line 88
    :goto_f
    array-length v6, v3

    if-ge v10, v6, :cond_15

    .line 89
    aget-object v6, v3, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 90
    :cond_15
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v6, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 91
    invoke-static {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    .line 92
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_7
    move v12, v7

    .line 93
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    const/4 v3, 0x1

    move v4, v3

    const/4 v7, 0x0

    goto :goto_13

    :pswitch_8
    move v12, v7

    .line 94
    iget-object v3, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_16

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x30

    if-lt v4, v8, :cond_16

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x31

    if-gt v4, v9, :cond_16

    new-array v4, v6, [B

    .line 96
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v8

    int-to-byte v8, v9

    aput-byte v8, v4, v7

    .line 97
    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-direct {v8, v6, v6, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    goto :goto_11

    .line 98
    :cond_16
    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 100
    new-instance v8, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length v9, v4

    invoke-direct {v8, v6, v9, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    .line 101
    :goto_11
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_13

    :cond_17
    :goto_12
    move v12, v7

    move v7, v6

    :goto_13
    add-int/lit8 v3, v12, 0x1

    const/4 v6, 0x2

    move/from16 v16, v7

    move v7, v3

    move v3, v6

    move/from16 v6, v16

    goto/16 :goto_1

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setLocationAttributes(Landroid/location/Location;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    .line 3
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->decimalToDMS(D)Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSLatitude"

    .line 10
    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->decimalToDMS(D)Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSLongitude"

    .line 12
    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v3

    double-to-int v11, v11

    .line 13
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "%d/1000"

    invoke-static {v1, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPSAltitude"

    .line 14
    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    cmpl-double v3, v3, v9

    if-lez v3, :cond_1

    const-string v3, "0"

    goto :goto_0

    :cond_1
    const-string v3, "1"

    :goto_0
    const-string v4, "GPSAltitudeRef"

    .line 15
    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v3, v7, v9

    if-lez v3, :cond_2

    const-string v3, "N"

    goto :goto_1

    :cond_2
    const-string v3, "S"

    :goto_1
    const-string v4, "GPSLatitudeRef"

    .line 16
    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v3, v5, v9

    if-lez v3, :cond_3

    const-string v3, "E"

    goto :goto_2

    :cond_3
    const-string v3, "W"

    :goto_2
    const-string v4, "GPSLongitudeRef"

    .line 17
    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GPSDateStamp"

    .line 19
    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPSTimeStamp"

    .line 21
    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPSProcessingMethod"

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 4
    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    array-length v1, p2

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p2}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;-><init>(II[B)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final setMakernoteByteArray([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    .line 3
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->addEntryMarkerData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to parse makernotes: "

    .line 4
    invoke-static {p1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotoMetadata"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setThumbnailBytes([B)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PhotoMetadata"

    if-nez p1, :cond_0

    const-string/jumbo p0, "thumbnail is null"

    .line 1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    array-length v2, p1

    const v3, 0xffff

    if-le v2, v3, :cond_1

    const-string p0, "Length of thumbnail exceeds size limit: "

    .line 3
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 4
    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    const/4 v1, 0x6

    .line 6
    iput v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    .line 7
    array-length v1, p1

    iput v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    return v0
.end method

.method public final setThumbnailData(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Compression"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_a

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->handleThumbnailFromJfif(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "BitsPerSample"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7
    invoke-virtual {v1, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, [I

    .line 9
    sget-object v5, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMimeType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    const-string v6, "PhotometricInterpretation"

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v6, :cond_5

    .line 12
    iget-object v7, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 13
    invoke-virtual {v6, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 14
    sget-object v7, Lcom/motorola/camera/photometadata/PhotoMetadata;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 15
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-ne v6, v2, :cond_5

    .line 16
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    if-eqz v1, :cond_b

    const-string v1, "StripOffsets"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v2, "StripByteCounts"

    .line 18
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 19
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 20
    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v0

    const-string v2, "PhotoMetadata"

    if-nez v1, :cond_6

    const-string/jumbo p0, "stripOffsets should not be null."

    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    const-string/jumbo p0, "stripByteCounts should not be null."

    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 27
    :cond_7
    invoke-static {v0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v6, v5, [B

    move v7, v4

    move v8, v7

    move v9, v8

    .line 28
    :goto_2
    array-length v10, v1

    if-ge v7, v10, :cond_9

    .line 29
    aget-wide v10, v1, v7

    long-to-int v10, v10

    .line 30
    aget-wide v11, v0, v7

    long-to-int v11, v11

    sub-int/2addr v10, v8

    if-gez v10, :cond_8

    const-string v12, "Invalid strip offset value"

    .line 31
    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    int-to-long v12, v10

    .line 32
    invoke-virtual {p1, v12, v13}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v8, v10

    .line 33
    new-array v10, v11, [B

    .line 34
    invoke-virtual {p1, v10}, Ljava/io/InputStream;->read([B)I

    add-int/2addr v8, v11

    .line 35
    invoke-static {v10, v4, v6, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 36
    :cond_9
    iput-boolean v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    .line 37
    iput-object v6, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailBytes:[B

    .line 38
    iput v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailLength:I

    goto :goto_3

    .line 39
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->handleThumbnailFromJfif(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final swapBasedOnImageSize(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 12
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_3

    if-ge v2, v3, :cond_3

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateImageSizeValues(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "DefaultCropSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "SensorTopBorder"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "SensorLeftBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "SensorBottomBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "SensorRightBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    const-string v5, "ImageWidth"

    const-string v6, "ImageLength"

    if-eqz v0, :cond_1

    .line 11
    iget p1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 13
    invoke-virtual {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    .line 15
    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    new-array v4, v2, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    aput-object v0, v4, v3

    .line 16
    invoke-static {v4, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    .line 17
    aget-object p1, p1, v2

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    new-array v2, v2, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    aput-object p1, v2, v3

    .line 18
    invoke-static {v2, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 20
    invoke-virtual {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, [I

    .line 22
    aget v0, p1, v3

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 23
    invoke-static {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    .line 24
    aget p1, p1, v2

    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 25
    invoke-static {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 31
    iget-object v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_4

    if-le v1, v2, :cond_4

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 33
    invoke-static {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 35
    invoke-static {v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "JPEGInterchangeFormat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    if-eqz v0, :cond_4

    .line 44
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 45
    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getJpegAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;II)V

    :cond_4
    :goto_1
    return-void
.end method
