.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;
.super Ljava/lang/Object;
.source "WatermarkEditorService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkEditorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFacing:Ljava/lang/String;

.field public mIsRtl:Z

.field public mLayoutDirection:Ljava/lang/String;

.field public mLineHeight:I

.field public mLineYStart:I

.field public mLogoHeight:I

.field public mLogoMargin:I

.field public mLogoWidth:I

.field public mPictureSize:Landroid/util/Size;

.field public mShotByBaseline:I

.field public mShotOnBaseline:I

.field public mShotOnSecondBaseline:I

.field public mTextSizeBy:I

.field public mTextSizeShotOn:I

.field public mWatermarkHeight:I

.field public mWatermarkWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    .line 2
    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem$1;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLayoutDirection:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mFacing:Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLayoutDirection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mFacing:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
