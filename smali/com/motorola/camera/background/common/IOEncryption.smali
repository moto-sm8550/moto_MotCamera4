.class public final enum Lcom/motorola/camera/background/common/IOEncryption;
.super Ljava/lang/Enum;
.source "IOEncryption.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/IOEncryption$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/IOEncryption;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/IOEncryption;",
        "",
        "Landroid/os/Parcelable;",
        "encryption",
        "",
        "(Ljava/lang/String;II)V",
        "getEncryption",
        "()I",
        "describeContents",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "UNDEFINED",
        "NONE",
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
.field private static final synthetic $VALUES:[Lcom/motorola/camera/background/common/IOEncryption;

.field public static final CREATOR:Lcom/motorola/camera/background/common/IOEncryption$CREATOR;

.field public static final enum NONE:Lcom/motorola/camera/background/common/IOEncryption;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNDEFINED:Lcom/motorola/camera/background/common/IOEncryption;


# instance fields
.field private final encryption:I


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/background/common/IOEncryption;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/background/common/IOEncryption;

    sget-object v1, Lcom/motorola/camera/background/common/IOEncryption;->UNDEFINED:Lcom/motorola/camera/background/common/IOEncryption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/IOEncryption;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/background/common/IOEncryption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/IOEncryption;->UNDEFINED:Lcom/motorola/camera/background/common/IOEncryption;

    .line 2
    new-instance v0, Lcom/motorola/camera/background/common/IOEncryption;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/background/common/IOEncryption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-static {}, Lcom/motorola/camera/background/common/IOEncryption;->$values()[Lcom/motorola/camera/background/common/IOEncryption;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/IOEncryption;->$VALUES:[Lcom/motorola/camera/background/common/IOEncryption;

    new-instance v0, Lcom/motorola/camera/background/common/IOEncryption$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/IOEncryption$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/IOEncryption;->CREATOR:Lcom/motorola/camera/background/common/IOEncryption$CREATOR;

    .line 3
    const-class v0, Lcom/motorola/camera/background/common/IOEncryption;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/IOEncryption;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/background/common/IOEncryption;->encryption:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/IOEncryption;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/IOEncryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/IOEncryption;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/IOEncryption;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/IOEncryption;->$VALUES:[Lcom/motorola/camera/background/common/IOEncryption;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/IOEncryption;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getEncryption()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/IOEncryption;->encryption:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "error"

    return-object p0

    :cond_0
    const-string p0, "none"

    return-object p0

    :cond_1
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
