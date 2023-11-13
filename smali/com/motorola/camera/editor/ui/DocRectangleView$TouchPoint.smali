.class public final enum Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;
.super Ljava/lang/Enum;
.source "DocRectangleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/ui/DocRectangleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final enum TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

.field public static final TP_MAP:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v1, "LT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v1, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v3, "RT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v3, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v5, "RB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v5, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v7, "LB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v9, "LM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v9, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v11, "TM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v11, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v13, "RM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    new-instance v13, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const-string v15, "BM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 2
    sput-object v15, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->$VALUES:[Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;
    .locals 1

    sget-object v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->$VALUES:[Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    invoke-virtual {v0}, [Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    return-object v0
.end method
