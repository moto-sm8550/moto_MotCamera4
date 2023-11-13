.class public final Landroidx/work/multiprocess/parcelable/ParcelableData;
.super Ljava/lang/Object;
.source "ParcelableData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:Landroidx/work/Data;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableData$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    new-array p0, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "Unsupported type %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 10
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v4

    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 11
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Double;

    move v6, v2

    .line 12
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 13
    aget-wide v7, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 15
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Float;

    move v6, v2

    .line 16
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 17
    aget v7, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 18
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v4

    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 19
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Long;

    move v6, v2

    .line 20
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 21
    aget-wide v7, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 22
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 23
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Integer;

    move v6, v2

    .line 24
    :goto_4
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 25
    aget v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 26
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 27
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Byte;

    move v6, v2

    .line 28
    :goto_5
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 29
    aget-byte v7, v4, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 30
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v4

    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 31
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Boolean;

    move v6, v2

    .line 32
    :goto_6
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 33
    aget-boolean v7, v4, v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_0
    move-object v4, v5

    goto :goto_8

    .line 34
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 35
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_8

    .line 36
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_8

    .line 37
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_8

    .line 38
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    .line 39
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto :goto_8

    .line 40
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_7

    :cond_1
    move v5, v2

    .line 41
    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_8

    :pswitch_e
    const/4 v4, 0x0

    .line 42
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 44
    :cond_2
    new-instance p1, Landroidx/work/Data;

    invoke-direct {p1, v0}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
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

.method public constructor <init>(Landroidx/work/Data;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    invoke-virtual {p0}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_7

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 7
    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 11
    :cond_1
    const-class v3, Ljava/lang/Byte;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x2

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_7

    .line 15
    :cond_2
    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 19
    :cond_3
    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_4

    const/4 v1, 0x4

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    check-cast p2, Ljava/lang/Long;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_7

    .line 23
    :cond_4
    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_5

    const/4 v1, 0x5

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_7

    .line 27
    :cond_5
    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_6

    const/4 v1, 0x6

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_7

    .line 31
    :cond_6
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_7

    const/4 v1, 0x7

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    check-cast p2, Ljava/lang/String;

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 35
    :cond_7
    const-class v3, [Ljava/lang/Boolean;

    if-ne v2, v3, :cond_9

    const/16 v2, 0x8

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    check-cast p2, [Ljava/lang/Boolean;

    .line 38
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 39
    array-length v2, p2

    new-array v2, v2, [Z

    .line 40
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_8

    .line 41
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_7

    .line 43
    :cond_9
    const-class v3, [Ljava/lang/Byte;

    if-ne v2, v3, :cond_b

    const/16 v2, 0x9

    .line 44
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    check-cast p2, [Ljava/lang/Byte;

    .line 46
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 47
    array-length v2, p2

    new-array v2, v2, [B

    .line 48
    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_a

    .line 49
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_7

    .line 51
    :cond_b
    const-class v3, [Ljava/lang/Integer;

    if-ne v2, v3, :cond_d

    const/16 v2, 0xa

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    check-cast p2, [Ljava/lang/Integer;

    .line 54
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 55
    array-length v2, p2

    new-array v2, v2, [I

    .line 56
    :goto_3
    array-length v3, p2

    if-ge v1, v3, :cond_c

    .line 57
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 58
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_7

    .line 59
    :cond_d
    const-class v3, [Ljava/lang/Long;

    if-ne v2, v3, :cond_f

    const/16 v2, 0xb

    .line 60
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    check-cast p2, [Ljava/lang/Long;

    .line 62
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 63
    array-length v2, p2

    new-array v2, v2, [J

    .line 64
    :goto_4
    array-length v3, p2

    if-ge v1, v3, :cond_e

    .line 65
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 66
    :cond_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_7

    .line 67
    :cond_f
    const-class v3, [Ljava/lang/Float;

    if-ne v2, v3, :cond_11

    const/16 v2, 0xc

    .line 68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    check-cast p2, [Ljava/lang/Float;

    .line 70
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 71
    array-length v2, p2

    new-array v2, v2, [F

    .line 72
    :goto_5
    array-length v3, p2

    if-ge v1, v3, :cond_10

    .line 73
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 74
    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_7

    .line 75
    :cond_11
    const-class v3, [Ljava/lang/Double;

    if-ne v2, v3, :cond_13

    const/16 v2, 0xd

    .line 76
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    check-cast p2, [Ljava/lang/Double;

    .line 78
    sget-object v2, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 79
    array-length v2, p2

    new-array v2, v2, [D

    .line 80
    :goto_6
    array-length v3, p2

    if-ge v1, v3, :cond_12

    .line 81
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    :cond_12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_7

    .line 83
    :cond_13
    const-class v3, [Ljava/lang/String;

    if-ne v2, v3, :cond_14

    const/16 v1, 0xe

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    check-cast p2, [Ljava/lang/String;

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 87
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    new-array p0, v4, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Unsupported value type %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    return-void
.end method
