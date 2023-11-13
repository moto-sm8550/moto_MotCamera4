.class public final Lcom/motorola/camera/background/common/IOFile;
.super Ljava/lang/Object;
.source "IOFile.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/IOFile$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B#\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u00c6\u0003J-\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\nH\u00d6\u0001J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0017H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/motorola/camera/background/common/IOFile;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "compression",
        "Lcom/motorola/camera/background/common/IOCompression;",
        "encryption",
        "Lcom/motorola/camera/background/common/IOEncryption;",
        "path",
        "",
        "(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V",
        "getCompression",
        "()Lcom/motorola/camera/background/common/IOCompression;",
        "getEncryption",
        "()Lcom/motorola/camera/background/common/IOEncryption;",
        "getPath",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/IOFile$CREATOR;


# instance fields
.field private final compression:Lcom/motorola/camera/background/common/IOCompression;

.field private final encryption:Lcom/motorola/camera/background/common/IOEncryption;

.field private final path:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/IOFile$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/IOFile$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/IOFile;->CREATOR:Lcom/motorola/camera/background/common/IOFile$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-class v0, Lcom/motorola/camera/background/common/IOCompression;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOCompression;

    .line 6
    const-class v1, Lcom/motorola/camera/background/common/IOEncryption;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/IOEncryption;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/camera/background/common/IOFile;-><init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/background/common/IOFile;Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;ILjava/lang/Object;)Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/background/common/IOFile;->copy(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)Lcom/motorola/camera/background/common/IOFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/motorola/camera/background/common/IOCompression;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    return-object p0
.end method

.method public final component2()Lcom/motorola/camera/background/common/IOEncryption;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    new-instance p0, Lcom/motorola/camera/background/common/IOFile;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/background/common/IOFile;-><init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/IOFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/IOFile;

    iget-object v1, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    iget-object v3, p1, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    iget-object v3, p1, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCompression()Lcom/motorola/camera/background/common/IOCompression;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    return-object p0
.end method

.method public final getEncryption()Lcom/motorola/camera/background/common/IOEncryption;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "IOFile(compression="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/IOFile;->compression:Lcom/motorola/camera/background/common/IOCompression;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/common/IOFile;->encryption:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/common/IOFile;->path:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
