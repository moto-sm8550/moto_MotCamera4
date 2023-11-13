.class public final enum Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
.super Ljava/lang/Enum;
.source "ProgramAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final enum COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final enum POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final enum TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final mLookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    const-string v3, "a_Position"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v3, "TEXTURE_COORD"

    const/4 v4, 0x1

    const-string v5, "a_TextureCoord"

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v5, "COLOR"

    const/4 v6, 0x2

    const-string v7, "a_Color"

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v7, "Y_TEXCOORD"

    const/4 v8, 0x3

    const-string v9, "a_Y_texcoord"

    invoke-direct {v5, v7, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v9, "VU_TEXCOORD"

    const/4 v10, 0x4

    const-string v11, "a_VU_texcoord"

    invoke-direct {v7, v9, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v11, "PIXCOORD"

    const/4 v12, 0x5

    const-string v13, "a_Pixcoord"

    invoke-direct {v9, v11, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mLookupMap:Ljava/util/HashMap;

    .line 9
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mLookupMap:Ljava/util/HashMap;

    .line 10
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    return-object v0
.end method
