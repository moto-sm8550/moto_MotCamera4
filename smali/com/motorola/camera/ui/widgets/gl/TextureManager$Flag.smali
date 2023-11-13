.class public final enum Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
.super Ljava/lang/Enum;
.source "TextureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/TextureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v1, "WAIT_LOADING_FLG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v3, "SESSION_CREATED_FLG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v5, "SURFACE_READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v7, "CONTEXT_VALID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 5
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v9, "SURFACE_VALID"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v11, "FIRST_FRAME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 7
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v13, "LOAD_MAIN_UI_COMPONENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 8
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v15, "LOAD_DEFERRED_COMPONENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    return-object v0
.end method
