.class public final Lkotlin/reflect/jvm/internal/pcollections/IntTree;
.super Ljava/lang/Object;
.source "IntTree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EMPTYNODE:Lkotlin/reflect/jvm/internal/pcollections/IntTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:J

.field public final left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final size:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->EMPTYNODE:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 6
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    .line 9
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    .line 10
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 11
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 12
    iget p1, p4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p5, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    return-void
.end method


# virtual methods
.method public final get(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v2, :cond_2

    .line 4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final plus(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/IntTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    return-object v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2, p3}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->plus(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object p1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->rebalanced(Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v2, :cond_2

    .line 5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    sub-long/2addr p1, v0

    invoke-virtual {v3, p1, p2, p3}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->plus(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->rebalanced(Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    return-object v0
.end method

.method public final rebalanced(Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)Lkotlin/reflect/jvm/internal/pcollections/IntTree;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;)",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 1
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    if-ne v4, v1, :cond_0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    if-ne v6, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-wide v1, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    .line 3
    iget v0, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    iget v5, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    add-int v7, v0, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    mul-int/lit8 v7, v5, 0x5

    if-lt v0, v7, :cond_2

    .line 4
    iget-object v12, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v0, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 5
    iget v5, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    iget v7, v12, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_1

    .line 6
    new-instance v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-wide v8, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long v10, v8, v1

    iget-object v13, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    new-instance v14, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    neg-long v1, v8

    iget-wide v4, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object v4

    move-object v0, v14

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object v8, v7

    move-wide v9, v10

    move-object v11, v13

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 8
    new-instance v19, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-wide v8, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    iget-wide v10, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v10, v8

    add-long v14, v10, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    new-instance v17, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    neg-long v10, v8

    iget-object v2, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    move-wide/from16 v20, v14

    iget-wide v13, v5, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v13, v8

    invoke-virtual {v5, v13, v14}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object v13

    move-object/from16 v8, v17

    move-wide v9, v10

    move-object v11, v2

    invoke-direct/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    new-instance v18, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-wide v4, v4, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    neg-long v8, v4

    iget-wide v10, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    sub-long/2addr v8, v10

    iget-wide v12, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v12, v10

    add-long/2addr v12, v4

    invoke-virtual {v7, v12, v13}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v7, v1

    move-wide v1, v8

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object/from16 v13, v19

    move-wide/from16 v14, v20

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v18}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x5

    if-lt v5, v0, :cond_4

    .line 9
    iget-object v7, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v13, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 10
    iget v0, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    iget v5, v13, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_3

    .line 11
    new-instance v14, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-wide v8, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long v10, v8, v1

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    new-instance v12, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    neg-long v1, v8

    iget-wide v4, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v4, v8

    invoke-virtual {v7, v4, v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object v8, v14

    move-wide v9, v10

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object v7, v14

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    .line 13
    new-instance v20, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-wide v4, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    iget-wide v9, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long v11, v4, v9

    add-long v15, v11, v1

    iget-object v14, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    new-instance v18, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    neg-long v1, v9

    sub-long/2addr v1, v4

    iget-wide v11, v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v11, v4

    add-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    new-instance v19, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-wide v0, v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    neg-long v9, v0

    iget-object v11, v6, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    iget-wide v2, v8, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    add-long/2addr v2, v0

    invoke-virtual {v8, v2, v3}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-result-object v12

    move-object/from16 v8, v19

    invoke-direct/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object v0, v14

    move-object/from16 v14, v20

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v19}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    move-object/from16 v7, v20

    goto :goto_0

    .line 14
    :cond_4
    new-instance v7, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-object v0, v7

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    :goto_0
    return-object v7
.end method

.method public final withKey(J)Lkotlin/reflect/jvm/internal/pcollections/IntTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTree<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->size:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->key:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->value:Ljava/lang/Object;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->left:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTree;->right:Lkotlin/reflect/jvm/internal/pcollections/IntTree;

    move-object v1, v0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/pcollections/IntTree;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/IntTree;Lkotlin/reflect/jvm/internal/pcollections/IntTree;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
