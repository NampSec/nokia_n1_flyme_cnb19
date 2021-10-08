.class public Landroid/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static tokenizer_:Landroid/alsa/LineTokenizer;


# instance fields
.field private cardRecords_:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Landroid/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    .line 147
    return-void
.end method

.method static synthetic access$000()Landroid/alsa/LineTokenizer;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;

    return-object v0
.end method


# virtual methods
.method public Log()V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    .line 110
    .local v1, "numCardRecs":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    const-string v2, "AlsaCardsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/alsa/AlsaCardsParser;->getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->textFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    iget-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    return-object v0
.end method

.method public getNumCardRecords()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public get_card_number_by_name(Ljava/lang/String;)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v5, "/proc/asound/pcm"

    .line 117
    .local v5, "pcmFilePath":Ljava/lang/String;
    const/4 v0, -0x1

    .line 118
    .local v0, "CardNum":I
    new-instance v4, Ljava/io/File;

    const-string v9, "/proc/asound/pcm"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "pcmFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 121
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 124
    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 126
    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "tokens":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 137
    .end local v8    # "tokens":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 138
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v6, v7

    .line 144
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_3
    :goto_0
    return v0

    .line 140
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 143
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_0

    .line 131
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    if-eqz v6, :cond_3

    .line 138
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 140
    :catch_2
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 134
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    if-eqz v6, :cond_3

    .line 138
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 140
    :catch_4
    move-exception v2

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 137
    :goto_3
    if-eqz v6, :cond_4

    .line 138
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 142
    :cond_4
    :goto_4
    throw v9

    .line 140
    :catch_5
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 133
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 131
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public scan()V
    .locals 8

    .prologue
    .line 79
    iget-object v7, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 80
    const-string v3, "/proc/asound/cards"

    .line 81
    .local v3, "cardsFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v7, "/proc/asound/cards"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "cardsFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 84
    .local v6, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 86
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    new-instance v1, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v1, p0}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Landroid/alsa/AlsaCardsParser;)V

    .line 88
    .local v1, "cardRecord":Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    .line 89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    .line 90
    iget-object v7, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "cardRecord":Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 98
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 92
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 95
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v4

    .line 96
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
