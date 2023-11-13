.class public final enum Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
.super Ljava/lang/Enum;
.source "PhotosProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/provider/photos/PhotosProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final mTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mActivityClassArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityPackageArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConfigurationInt:I

.field public mDescriptionResId:I

.field public mIconResId:I

.field public final mIndex:I

.field public mNameResId:I

.field public final mType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const-string v3, "com.motorola.camera.SpecialType.Unknown"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 2
    new-instance v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v3, "None"

    const/4 v4, 0x1

    const-string v5, "com.motorola.camera.SpecialType.None"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 3
    new-instance v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v5, "BestShotType"

    const/4 v6, 0x2

    const-string v7, "com.motorola.camera.SpecialType.BestShotType"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 4
    new-instance v5, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v7, "OriginalType"

    const/4 v8, 0x3

    const-string v9, "com.motorola.camera.SpecialType.OriginalType"

    invoke-direct {v5, v7, v8, v9, v8}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 5
    new-instance v7, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v9, "Depth"

    const/4 v10, 0x4

    const-string v11, "com.motorola.camera.SpecialType.Depth"

    invoke-direct {v7, v9, v10, v11, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 6
    new-instance v9, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v11, "Layer"

    const/4 v12, 0x5

    const-string v13, "com.motorola.camera.SpecialType.Layer"

    invoke-direct {v9, v11, v12, v13, v12}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 7
    new-instance v11, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v13, "Portrait"

    const/4 v14, 0x6

    const-string v15, "com.motorola.camera.SpecialType.Portrait"

    invoke-direct {v11, v13, v14, v15, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 8
    new-instance v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v15, "Composition"

    const/4 v14, 0x7

    const-string v12, "com.motorola.camera.SpecialType.Composition"

    invoke-direct {v13, v15, v14, v12, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 9
    new-instance v12, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v15, "LowLightAI"

    const/16 v14, 0x8

    const-string v10, "com.motorola.camera.SpecialType.LowlightAI"

    invoke-direct {v12, v15, v14, v10, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 10
    new-instance v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v15, "Doc"

    const/16 v14, 0x9

    const-string v8, "com.motorola.camera.SpecialType.Doc"

    invoke-direct {v10, v15, v14, v8, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 11
    new-instance v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v15, "ImageStabilizationAI"

    const/16 v14, 0xa

    const-string v6, "com.motorola.camera.SpecialType.ImageStabilizationAI"

    invoke-direct {v8, v15, v14, v6, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 12
    new-instance v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v15, "CudAI"

    const/16 v14, 0xb

    const-string v4, "com.motorola.camera.SpecialType.CudAI"

    invoke-direct {v6, v15, v14, v4, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    aput-object v0, v4, v2

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

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 13
    sput-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->$VALUES:[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    .line 16
    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 17
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    .line 5
    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    .line 6
    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    .line 7
    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 1

    const-class v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->$VALUES:[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v0}, [Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object v0
.end method


# virtual methods
.method public final getActivityClassForConfig(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getActivityPackageForConfig(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final isEditAvailable()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeEditConfiguration()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
