.class public final enum Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;
.super Ljava/lang/Enum;
.source "ThumbnailType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v3, "SECURE_LOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v5, "PHOTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v7, "SEGMENTATION_FIRST_SHOT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v9, "VIDEO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v11, "PLACE_HOLDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    return-object v0
.end method
