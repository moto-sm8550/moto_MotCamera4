.class public final enum Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
.super Ljava/lang/Enum;
.source "BaseTidbitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Contact:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Event:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum GoogleMatter:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Location:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Message:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum MotoRdpConnection:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Product:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Text:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum Url:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

.field public static final enum WifiAp:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v1, "Contact"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Contact:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 2
    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v3, "Event"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Event:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 3
    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v5, "Location"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Location:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 4
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v7, "Message"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Message:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 5
    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v9, "Product"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Product:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 6
    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v11, "Text"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Text:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 7
    new-instance v11, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v13, "Url"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Url:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 8
    new-instance v13, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v15, "WifiAp"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->WifiAp:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 9
    new-instance v15, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v14, "MotoRdpConnection"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoRdpConnection:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 10
    new-instance v14, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v12, "MotoMonopoly"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    .line 11
    new-instance v12, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const-string v10, "GoogleMatter"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->GoogleMatter:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 1

    const-class v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 1

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    invoke-virtual {v0}, [Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object v0
.end method
